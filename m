Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5746CACC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 10:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OaFq1P29LluEyIwbcQPPn6zjxOv/OoTSfxVSMsY/VCQ=; b=J4UE7XpqiOjiUm
	IFK4XNjLoWBABb8Br2Q5bMvG3VyjR6siG/DcQ/w9XTD3x82wYcSpYmBiy3y+osp63mCed4eMCqmB0
	kSXOXinsGk3z9EspNEsle1yeTMJUtH8acIJ+alkERhVXsbjNLJ+NxdwQyb2gVyUqtC/T52IIyPlo2
	IUhYG/+WTE3uF+jGE11aEFl++4n+oKhJH1zhJ/eniPG14c1+EPvfK9TYKrQ3Ct4bOcHNCVYVk6ETi
	wV14GVHAtXlpeSLT25UH5KQPIQb/y6hoBuQAttXSWbgR04kbdh2gIPkUAAj3xjbGTVvGWEWdaXACE
	QKNCWBjjRsxbHCNj8dBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho1c7-0007RL-1G; Thu, 18 Jul 2019 08:18:07 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1bs-0007Q0-9S
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 08:17:54 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id DC0A470A26760DD399DD;
 Thu, 18 Jul 2019 16:17:47 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Thu, 18 Jul 2019 16:17:39 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <maz@kernel.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v2] KVM: arm/arm64: Introduce kvm_pmu_vcpu_init() to setup PMU
 counter idx
Date: Thu, 18 Jul 2019 08:15:10 +0000
Message-ID: <1563437710-30756-1-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_011752_488813_E7FEAB39 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: suzuki.poulose@arm.com, marc.zyngier@arm.com, julien.thierry@arm.com,
 linux-kernel@vger.kernel.org, james.morse@arm.com, andrew.murray@arm.com,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We use "pmc->idx" and the "chained" bitmap to determine if the pmc is
chained, in kvm_pmu_pmc_is_chained().  But idx might be uninitialized
(and random) when we doing this decision, through a KVM_ARM_VCPU_INIT
ioctl -> kvm_pmu_vcpu_reset(). And the test_bit() against this random
idx will potentially hit a KASAN BUG [1].

In general, idx is the static property of a PMU counter that is not
expected to be modified across resets, as suggested by Julien.  It
looks more reasonable if we can setup the PMU counter idx for a vcpu
in its creation time. Introduce a new function - kvm_pmu_vcpu_init()
for this basic setup. Oh, and the KASAN BUG will get fixed this way.

[1] https://www.spinics.net/lists/kvm-arm/msg36700.html

Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
Suggested-by: Andrew Murray <andrew.murray@arm.com>
Suggested-by: Julien Thierry <julien.thierry@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---

Changes since v1:
 - Introduce kvm_pmu_vcpu_init() in vcpu's creation time, move the
   assignment of pmc->idx into it.
 - Thus change the subject. The old one is "KVM: arm/arm64: Assign
   pmc->idx before kvm_pmu_stop_counter()".

Julien, I haven't collected your Acked-by into this version. If you're
still happy with the change, please Ack again. Thanks!

 include/kvm/arm_pmu.h |  2 ++
 virt/kvm/arm/arm.c    |  2 ++
 virt/kvm/arm/pmu.c    | 18 +++++++++++++++---
 3 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/include/kvm/arm_pmu.h b/include/kvm/arm_pmu.h
index 16c769a..6db0304 100644
--- a/include/kvm/arm_pmu.h
+++ b/include/kvm/arm_pmu.h
@@ -34,6 +34,7 @@ struct kvm_pmu {
 u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx);
 void kvm_pmu_set_counter_value(struct kvm_vcpu *vcpu, u64 select_idx, u64 val);
 u64 kvm_pmu_valid_counter_mask(struct kvm_vcpu *vcpu);
+void kvm_pmu_vcpu_init(struct kvm_vcpu *vcpu);
 void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu);
 void kvm_pmu_vcpu_destroy(struct kvm_vcpu *vcpu);
 void kvm_pmu_disable_counter_mask(struct kvm_vcpu *vcpu, u64 val);
@@ -71,6 +72,7 @@ static inline u64 kvm_pmu_valid_counter_mask(struct kvm_vcpu *vcpu)
 {
 	return 0;
 }
+static inline void kvm_pmu_vcpu_init(struct kvm_vcpu *vcpu) {}
 static inline void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu) {}
 static inline void kvm_pmu_vcpu_destroy(struct kvm_vcpu *vcpu) {}
 static inline void kvm_pmu_disable_counter_mask(struct kvm_vcpu *vcpu, u64 val) {}
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index f645c0f..c704fa6 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -340,6 +340,8 @@ int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 	/* Set up the timer */
 	kvm_timer_vcpu_init(vcpu);
 
+	kvm_pmu_vcpu_init(vcpu);
+
 	kvm_arm_reset_debug_ptr(vcpu);
 
 	return kvm_vgic_vcpu_init(vcpu);
diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index 3dd8238..362a018 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -215,6 +215,20 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
 }
 
 /**
+ * kvm_pmu_vcpu_init - assign pmu counter idx for cpu
+ * @vcpu: The vcpu pointer
+ *
+ */
+void kvm_pmu_vcpu_init(struct kvm_vcpu *vcpu)
+{
+	int i;
+	struct kvm_pmu *pmu = &vcpu->arch.pmu;
+
+	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++)
+		pmu->pmc[i].idx = i;
+}
+
+/**
  * kvm_pmu_vcpu_reset - reset pmu state for cpu
  * @vcpu: The vcpu pointer
  *
@@ -224,10 +238,8 @@ void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu)
 	int i;
 	struct kvm_pmu *pmu = &vcpu->arch.pmu;
 
-	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++) {
+	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++)
 		kvm_pmu_stop_counter(vcpu, &pmu->pmc[i]);
-		pmu->pmc[i].idx = i;
-	}
 
 	bitmap_zero(vcpu->arch.pmu.chained, ARMV8_PMU_MAX_COUNTER_PAIRS);
 }
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
