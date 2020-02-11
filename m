Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB80159803
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:19:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1a7zkAh2ZMQKp4OZBIeHxHtt+CWxfkyXF4mJL42GD6s=; b=WsWNNRD0dQ0KVA
	r78L//enoFIxSzQLM0MA3SCrbvOK0aff4ic1D9/6C1gemZZFWZxw3Hq+XuTCkM7LlicrSe5qRNmNq
	SMSDKmJd4UsnXkvo6eJQRa5YVK2VsAQnsAT0KgMdKcpxFBwfV5misfmgQFgY587VsoDBQ4rPvFAZ2
	JaTn0LToF1MzEmr6IHLv++O4hJAikJ7hVpMvqzhuJsv/fRpA8fIjp2lVTpfyqo865msw50PD96jm5
	J0GxB4WBACTVBW8ZwMzIaDxLrX4gWTf9gqHnwvo8RJUTzVnS2zWRFZYPiD1W6HxD8Bd0JJBVTJFq8
	fJUAoviXGiBlFE80dRHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a7a-0005qY-Vk; Tue, 11 Feb 2020 18:18:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zj8-0003Tx-Nv
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:53:40 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7AA120661;
 Tue, 11 Feb 2020 17:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443618;
 bh=sMIPQs20M5KCorsTrh42SFSdn+qqoWLMSQtP8k/tiuA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Yr1DXlJe2kSxTYkM3iqIKOSXkUxkJK8Ul4bfmnhhfjFQUbMGYcKhi03cmWE1h4ewt
 yafwbdTxvJOLHn8ca6s/YzGI8uq68Tn+t1bun5a/JT1sTqUhY1yf+2YMvOSoF27/1k
 qvlEhAi1aoMm/0IHeBcmYhJ3wsZBYfoJ+y5LHsWk=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zft-004O7k-E0; Tue, 11 Feb 2020 17:50:17 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 41/94] KVM: arm64: nv: Move last_vcpu_ran to be per s2 mmu
Date: Tue, 11 Feb 2020 17:48:45 +0000
Message-Id: <20200211174938.27809-42-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211174938.27809-1-maz@kernel.org>
References: <20200211174938.27809-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095338_865786_068FAFC9 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

last_vcpu_ran has to be per s2 mmu now that we can have multiple S2
per VM. Let's take this opportunity to perform some cleanup.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/include/asm/kvm_host.h     |  6 +++---
 arch/arm/include/asm/kvm_mmu.h      |  4 ++--
 arch/arm64/include/asm/kvm_host.h   |  6 +++---
 arch/arm64/include/asm/kvm_mmu.h    |  2 +-
 arch/arm64/include/asm/kvm_nested.h |  2 +-
 arch/arm64/kvm/nested.c             | 11 +++--------
 virt/kvm/arm/arm.c                  | 25 ++++---------------------
 virt/kvm/arm/mmu.c                  | 28 +++++++++++++++++++++-------
 8 files changed, 38 insertions(+), 46 deletions(-)

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index 0a81c454a540..cb5e9b37a87a 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -63,15 +63,15 @@ struct kvm_s2_mmu {
 	pgd_t *pgd;
 	phys_addr_t pgd_phys;
 
+	/* The last vcpu id that ran on each physical CPU */
+	int __percpu *last_vcpu_ran;
+
 	struct kvm *kvm;
 };
 
 struct kvm_arch {
 	struct kvm_s2_mmu mmu;
 
-	/* The last vcpu id that ran on each physical CPU */
-	int __percpu *last_vcpu_ran;
-
 	/* Stage-2 page table */
 	pgd_t *pgd;
 	phys_addr_t pgd_phys;
diff --git a/arch/arm/include/asm/kvm_mmu.h b/arch/arm/include/asm/kvm_mmu.h
index 7f1fb496f435..1d0d5f00f0af 100644
--- a/arch/arm/include/asm/kvm_mmu.h
+++ b/arch/arm/include/asm/kvm_mmu.h
@@ -52,7 +52,7 @@ int create_hyp_exec_mappings(phys_addr_t phys_addr, size_t size,
 void free_hyp_pgds(void);
 
 void stage2_unmap_vm(struct kvm *kvm);
-int kvm_alloc_stage2_pgd(struct kvm_s2_mmu *mmu);
+int kvm_init_stage2_mmu(struct kvm *kvm, struct kvm_s2_mmu *mmu);
 void kvm_free_stage2_pgd(struct kvm_s2_mmu *mmu);
 int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
 			  phys_addr_t pa, unsigned long size, bool writable);
@@ -420,7 +420,7 @@ static inline int hyp_map_aux_data(void)
 
 static inline int kvm_set_ipa_limit(void) { return 0; }
 
-static inline void kvm_init_s2_mmu(struct kvm_s2_mmu *mmu) {}
+static inline void kvm_init_nested_s2_mmu(struct kvm_s2_mmu *mmu) {}
 static inline void kvm_init_nested(struct kvm *kvm) {}
 
 struct kvm_s2_trans {};
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 18e12d00c16d..36bb463dc16a 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -93,6 +93,9 @@ struct kvm_s2_mmu {
 	 * >0: Somebody is actively using this.
 	 */
 	atomic_t refcnt;
+
+	/* The last vcpu id that ran on each physical CPU */
+	int __percpu *last_vcpu_ran;
 };
 
 static inline bool kvm_s2_mmu_valid(struct kvm_s2_mmu *mmu)
@@ -114,9 +117,6 @@ struct kvm_arch {
 	/* VTCR_EL2 value for this VM */
 	u64    vtcr;
 
-	/* The last vcpu id that ran on each physical CPU */
-	int __percpu *last_vcpu_ran;
-
 	/* The maximum number of vCPUs depends on the used GIC model */
 	int max_vcpus;
 
diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index 41ff6aa728e3..9c0bf878fb3b 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -159,7 +159,7 @@ void free_hyp_pgds(void);
 
 void kvm_unmap_stage2_range(struct kvm_s2_mmu *mmu, phys_addr_t start, u64 size);
 void stage2_unmap_vm(struct kvm *kvm);
-int kvm_alloc_stage2_pgd(struct kvm_s2_mmu *mmu);
+int kvm_init_stage2_mmu(struct kvm *kvm, struct kvm_s2_mmu *mmu);
 void kvm_free_stage2_pgd(struct kvm_s2_mmu *mmu);
 int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
 			  phys_addr_t pa, unsigned long size, bool writable);
diff --git a/arch/arm64/include/asm/kvm_nested.h b/arch/arm64/include/asm/kvm_nested.h
index 20c7c18e99ac..147943d876ef 100644
--- a/arch/arm64/include/asm/kvm_nested.h
+++ b/arch/arm64/include/asm/kvm_nested.h
@@ -12,7 +12,7 @@ static inline bool nested_virt_in_use(const struct kvm_vcpu *vcpu)
 
 extern void kvm_init_nested(struct kvm *kvm);
 extern int kvm_vcpu_init_nested(struct kvm_vcpu *vcpu);
-extern void kvm_init_s2_mmu(struct kvm_s2_mmu *mmu);
+extern void kvm_init_nested_s2_mmu(struct kvm_s2_mmu *mmu);
 extern struct kvm_s2_mmu *lookup_s2_mmu(struct kvm *kvm, u64 vttbr, u64 hcr);
 extern void kvm_vcpu_load_hw_mmu(struct kvm_vcpu *vcpu);
 extern void kvm_vcpu_put_hw_mmu(struct kvm_vcpu *vcpu);
diff --git a/arch/arm64/kvm/nested.c b/arch/arm64/kvm/nested.c
index d7b2e17b54c3..d20f9982ffea 100644
--- a/arch/arm64/kvm/nested.c
+++ b/arch/arm64/kvm/nested.c
@@ -59,13 +59,8 @@ int kvm_vcpu_init_nested(struct kvm_vcpu *vcpu)
 		       num_mmus * sizeof(*kvm->arch.nested_mmus),
 		       GFP_KERNEL | __GFP_ZERO);
 	if (tmp) {
-		tmp[num_mmus - 1].kvm = kvm;
-		atomic_set(&tmp[num_mmus - 1].refcnt, 0);
-		tmp[num_mmus - 2].kvm = kvm;
-		atomic_set(&tmp[num_mmus - 2].refcnt, 0);
-
-		if (kvm_alloc_stage2_pgd(&tmp[num_mmus - 1]) ||
-		    kvm_alloc_stage2_pgd(&tmp[num_mmus - 2])) {
+		if (kvm_init_stage2_mmu(kvm, &tmp[num_mmus - 1]) ||
+		    kvm_init_stage2_mmu(kvm, &tmp[num_mmus - 2])) {
 			kvm_free_stage2_pgd(&tmp[num_mmus - 1]);
 			kvm_free_stage2_pgd(&tmp[num_mmus - 2]);
 		} else {
@@ -445,7 +440,7 @@ static struct kvm_s2_mmu *get_s2_mmu_nested(struct kvm_vcpu *vcpu)
 	return s2_mmu;
 }
 
-void kvm_init_s2_mmu(struct kvm_s2_mmu *mmu)
+void kvm_init_nested_s2_mmu(struct kvm_s2_mmu *mmu)
 {
 	mmu->vttbr = 1;
 	mmu->nested_stage2_enabled = false;
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index dcd8d54d38ce..9bb5d5f47237 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -102,26 +102,15 @@ int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
  */
 int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
 {
-	int ret, cpu;
+	int ret;
 
 	ret = kvm_arm_setup_stage2(kvm, type);
 	if (ret)
 		return ret;
 
-	kvm->arch.last_vcpu_ran = alloc_percpu(typeof(*kvm->arch.last_vcpu_ran));
-	if (!kvm->arch.last_vcpu_ran)
-		return -ENOMEM;
-
-	for_each_possible_cpu(cpu)
-		*per_cpu_ptr(kvm->arch.last_vcpu_ran, cpu) = -1;
-
-	/* Mark the initial VMID generation invalid */
-	kvm->arch.mmu.vmid.vmid_gen = 0;
-	kvm->arch.mmu.kvm = kvm;
-
-	ret = kvm_alloc_stage2_pgd(&kvm->arch.mmu);
+	ret = kvm_init_stage2_mmu(kvm, &kvm->arch.mmu);
 	if (ret)
-		goto out_fail_alloc;
+		return ret;
 
 	kvm_init_nested(kvm);
 
@@ -138,9 +127,6 @@ int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
 	return ret;
 out_free_stage2_pgd:
 	kvm_free_stage2_pgd(&kvm->arch.mmu);
-out_fail_alloc:
-	free_percpu(kvm->arch.last_vcpu_ran);
-	kvm->arch.last_vcpu_ran = NULL;
 	return ret;
 }
 
@@ -165,9 +151,6 @@ void kvm_arch_destroy_vm(struct kvm *kvm)
 
 	kvm_vgic_destroy(kvm);
 
-	free_percpu(kvm->arch.last_vcpu_ran);
-	kvm->arch.last_vcpu_ran = NULL;
-
 	for (i = 0; i < KVM_MAX_VCPUS; ++i) {
 		if (kvm->vcpus[i]) {
 			kvm_vcpu_destroy(kvm->vcpus[i]);
@@ -346,7 +329,7 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 	if (nested_virt_in_use(vcpu))
 		kvm_vcpu_load_hw_mmu(vcpu);
 
-	last_ran = this_cpu_ptr(vcpu->kvm->arch.last_vcpu_ran);
+	last_ran = this_cpu_ptr(vcpu->arch.hw_mmu->last_vcpu_ran);
 	cpu_data = this_cpu_ptr(&kvm_host_data);
 
 	/*
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 054946566dc0..dc3bded72363 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -907,8 +907,9 @@ int create_hyp_exec_mappings(phys_addr_t phys_addr, size_t size,
 }
 
 /**
- * kvm_alloc_stage2_pgd - allocate level-1 table for stage-2 translation.
- * @mmu:	The stage 2 mmu struct pointer
+ * kvm_init_stage2_mmu - Initialise a S2 MMU strucrure
+ * @kvm:	The pointer to the KVM structure
+ * @mmu:	The pointer to the s2 MMU structure
  *
  * Allocates only the stage-2 HW PGD level table(s) of size defined by
  * stage2_pgd_size(mmu->kvm).
@@ -916,10 +917,11 @@ int create_hyp_exec_mappings(phys_addr_t phys_addr, size_t size,
  * Note we don't need locking here as this is only called when the VM is
  * created, which can only be done once.
  */
-int kvm_alloc_stage2_pgd(struct kvm_s2_mmu *mmu)
+int kvm_init_stage2_mmu(struct kvm *kvm, struct kvm_s2_mmu *mmu)
 {
 	phys_addr_t pgd_phys;
 	pgd_t *pgd;
+	int cpu;
 
 	if (mmu->pgd != NULL) {
 		kvm_err("kvm_arch already initialized?\n");
@@ -927,19 +929,29 @@ int kvm_alloc_stage2_pgd(struct kvm_s2_mmu *mmu)
 	}
 
 	/* Allocate the HW PGD, making sure that each page gets its own refcount */
-	pgd = alloc_pages_exact(stage2_pgd_size(mmu->kvm), GFP_KERNEL | __GFP_ZERO);
+	pgd = alloc_pages_exact(stage2_pgd_size(kvm), GFP_KERNEL | __GFP_ZERO);
 	if (!pgd)
 		return -ENOMEM;
 
 	pgd_phys = virt_to_phys(pgd);
-	if (WARN_ON(pgd_phys & ~kvm_vttbr_baddr_mask(mmu->kvm)))
+	if (WARN_ON(pgd_phys & ~kvm_vttbr_baddr_mask(kvm)))
 		return -EINVAL;
 
+	mmu->last_vcpu_ran = alloc_percpu(typeof(*mmu->last_vcpu_ran));
+	if (!mmu->last_vcpu_ran) {
+		free_pages_exact(pgd, stage2_pgd_size(kvm));
+		return -ENOMEM;
+	}
+
+	for_each_possible_cpu(cpu)
+		*per_cpu_ptr(mmu->last_vcpu_ran, cpu) = -1;
+
+	mmu->kvm = kvm;
 	mmu->pgd = pgd;
 	mmu->pgd_phys = pgd_phys;
 	mmu->vmid.vmid_gen = 0;
 
-	kvm_init_s2_mmu(mmu);
+	kvm_init_nested_s2_mmu(mmu);
 
 	return 0;
 }
@@ -1027,8 +1039,10 @@ void kvm_free_stage2_pgd(struct kvm_s2_mmu *mmu)
 	spin_unlock(&kvm->mmu_lock);
 
 	/* Free the HW pgd, one page at a time */
-	if (pgd)
+	if (pgd) {
 		free_pages_exact(pgd, stage2_pgd_size(kvm));
+		free_percpu(mmu->last_vcpu_ran);
+	}
 }
 
 static pud_t *stage2_get_pud(struct kvm_s2_mmu *mmu, struct kvm_mmu_memory_cache *cache,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
