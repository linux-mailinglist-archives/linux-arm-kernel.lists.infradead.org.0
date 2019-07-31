Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147287CAA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pAuquxCRH7iePLsrukCQCz42PcJ786kXVOh8uKQitpQ=; b=snY8kXC+GkHosA
	auM0oiF+L0cTM6SrZXrU4KmyXexelUsPxQe0qGifwGSfLDdSwUKdq78vRVqzpD/WRyJFuirjyNpUy
	VokFCI/GHC32M83JVt8hy4q4KD9c0AA5zaNXX3ob+8lsZjrLwfn6JAXGlIWU/Z8bDF/L+7A6WnmfC
	MYOULkpmvkeo1/AHwthjkkDOoXbdBCtqxxDDrJ7CO5/cGwA2FFHN2BHatl2Jm4jJac62N3ZGZo0rM
	8sDIgWnCkp+JBZ1b6UwqS7qp3jZLUPL59sgGrI+PIbM+I3xvOxa0IzVzRwS0Ey3EnM/q7tAy6Or1x
	lZpJFTUxl8XdGEtRzwEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssXQ-0004nE-Cj; Wed, 31 Jul 2019 17:37:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hssX9-0004dR-Ll
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:37:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B49B31570;
 Wed, 31 Jul 2019 10:37:02 -0700 (PDT)
Received: from big-swifty.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CDB553F71F;
 Wed, 31 Jul 2019 10:36:59 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 1/5] KVM: arm/arm64: Introduce kvm_pmu_vcpu_init() to setup
 PMU counter index
Date: Wed, 31 Jul 2019 18:36:46 +0100
Message-Id: <20190731173650.12627-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731173650.12627-1-maz@kernel.org>
References: <20190731173650.12627-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_103703_876686_79F537F4 
X-CRM114-Status: GOOD (  13.10  )
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
Cc: Anders Roxell <anders.roxell@linaro.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Andrew Murray <andrew.murray@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zenghui Yu <yuzenghui@huawei.com>

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
Acked-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 include/kvm/arm_pmu.h |  2 ++
 virt/kvm/arm/arm.c    |  2 ++
 virt/kvm/arm/pmu.c    | 18 +++++++++++++++---
 3 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/include/kvm/arm_pmu.h b/include/kvm/arm_pmu.h
index 16c769a7f979..6db030439e29 100644
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
index f645c0fbf7ec..c704fa696184 100644
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
index 3dd8238ed246..362a01886bab 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -214,6 +214,20 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
 	kvm_pmu_release_perf_event(pmc);
 }
 
+/**
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
 /**
  * kvm_pmu_vcpu_reset - reset pmu state for cpu
  * @vcpu: The vcpu pointer
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
