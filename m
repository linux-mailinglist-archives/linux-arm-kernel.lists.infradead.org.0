Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16F46B80A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9s1uD4Tpk9UyFd+40ZHJ2zn82X4iXoOBlGX0cy4CX6k=; b=V0UMvbDQ9Xji4R/L2nJ+8pcmwy
	k2nbX3PaQkHldzowKdWjVq2vwaN/0F5TulPXEcJfRfDljYV3qWsWj+B1ooDbJGniZr86NOl0zrNZx
	OcINVpfiehcyP73wErKc6orsV2v7FKFdkx/rAY1nC9LrgwcjBwZLb+7UP7LwajsECsjIXjF6iCbz/
	vFhhAJK7nvTexj4/5b0JLMhkFJg+3TNjX8MRMM7+8nLkvyyqh29n+Gp6XFAn0AxnlgskiWEr+DtCg
	7XiaqgWUJaN4Y6oe/8Fjw8Q6JSVj7xaBh04UQXqDqMgOEUmLLzBVLBSfGb/Tlsqs5Ik/lVagqea35
	NtwNkLVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfAE-0005TI-7O; Wed, 17 Jul 2019 08:19:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf80-0003Ui-QE
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:17:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1711F1516;
 Wed, 17 Jul 2019 01:17:32 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EAA223F71A;
 Wed, 17 Jul 2019 01:19:29 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 7/9] arm/arm64: kvm: pmu: Make overflow handler NMI safe
Date: Wed, 17 Jul 2019 09:17:10 +0100
Message-Id: <1563351432-55652-8-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011732_924249_27B0DBF2 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 peterz@infradead.org, jolsa@redhat.com,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, will.deacon@arm.com,
 Christoffer Dall <christoffer.dall@arm.com>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com,
 James Morse <james.morse@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 namhyung@kernel.org, sthotton@marvell.com, liwei391@huawei.com,
 kvmarm@lists.cs.columbia.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When using an NMI for the PMU interrupt, taking any lock might cause a
deadlock. The current PMU overflow handler in KVM takes locks when
trying to wake up a vcpu.

When overflow handler is called by an NMI, defer the vcpu waking in an
irq_work queue.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Cc: Christoffer Dall <christoffer.dall@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
---
 include/kvm/arm_pmu.h |  1 +
 virt/kvm/arm/pmu.c    | 25 ++++++++++++++++++++++++-
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/include/kvm/arm_pmu.h b/include/kvm/arm_pmu.h
index 16c769a..8202ed7 100644
--- a/include/kvm/arm_pmu.h
+++ b/include/kvm/arm_pmu.h
@@ -27,6 +27,7 @@ struct kvm_pmu {
 	bool ready;
 	bool created;
 	bool irq_level;
+	struct irq_work overflow_work;
 };

 #define kvm_arm_pmu_v3_ready(v)		((v)->arch.pmu.ready)
diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index 3dd8238..deed8fb 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -421,6 +421,22 @@ void kvm_pmu_sync_hwstate(struct kvm_vcpu *vcpu)
 }

 /**
+ * When perf interrupt is an NMI, we cannot safely notify the vcpu corresponding
+ * to the event.
+ * This is why we need a callback to do it once outside of the NMI context.
+ */
+static void kvm_pmu_perf_overflow_notify_vcpu(struct irq_work *work)
+{
+	struct kvm_vcpu *vcpu;
+	struct kvm_pmu *pmu;
+
+	pmu = container_of(work, struct kvm_pmu, overflow_work);
+	vcpu = kvm_pmc_to_vcpu(&pmu->pmc[0]);
+
+	kvm_vcpu_kick(vcpu);
+}
+
+/**
  * When the perf event overflows, set the overflow status and inform the vcpu.
  */
 static void kvm_pmu_perf_overflow(struct perf_event *perf_event,
@@ -435,7 +451,11 @@ static void kvm_pmu_perf_overflow(struct perf_event *perf_event,

 	if (kvm_pmu_overflow_status(vcpu)) {
 		kvm_make_request(KVM_REQ_IRQ_PENDING, vcpu);
-		kvm_vcpu_kick(vcpu);
+
+		if (!in_nmi())
+			kvm_vcpu_kick(vcpu);
+		else
+			irq_work_queue(&vcpu->arch.pmu.overflow_work);
 	}
 }

@@ -706,6 +726,9 @@ static int kvm_arm_pmu_v3_init(struct kvm_vcpu *vcpu)
 			return ret;
 	}

+	init_irq_work(&vcpu->arch.pmu.overflow_work,
+		      kvm_pmu_perf_overflow_notify_vcpu);
+
 	vcpu->arch.pmu.created = true;
 	return 0;
 }
--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
