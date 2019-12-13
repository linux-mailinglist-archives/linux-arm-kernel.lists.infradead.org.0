Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E6111EA4B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:28:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/QWI5sc1pHkP4iko4Bj9/GK35uadpKKBo5ceIDC+I0=; b=Cg2EH91x5eieTj
	61SfBNDQkyuMJ6ybdVMYWZZOmZyiQznQ6WDw3bTVib5+xAuAqcOO4t88hgq/ofyHAj7g4gyB7wsjo
	pU7/E11au/NkFJsR3Kt5ySWQbQM3EYH2BQoCBOw0ooy3/de8XXMdfXU+cQb1b9YeOttAHoZDKOZdR
	K+ZcIZSLAF1sEx9XaFhWJnEw2gxVaKxJZPmturrH2/Z9QNgzn8hQ0njriNhuZHtZaY42wRgpbzxEk
	r1uJLSuPRuFjDlv6QekWvrcfOSm80CvcO/JWPm6ltswhHfcldnAygfQW6G7YtzvvlMQpKRmNeRpFw
	uyWlWG30umGu+zcU6dlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpg8-0000i7-5T; Fri, 13 Dec 2019 18:28:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpfi-0000Xp-7w
 for linux-arm-kernel@bombadil.infradead.org; Fri, 13 Dec 2019 18:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6/SlbrtIh8SblQiBH4SRyyo4fw2iDM1TKN8PjYusjXE=; b=f0XkbJuTNW5uY6LUNEE87NNOKK
 ENevbviXdp4709TE3xP/3Xvju0bhmvuKHKM6Z/SwkPaaeFytuxzTRWZ5o+A09neiSf+ydzN9lOFe8
 1gy1rLwm4pFDYKBRBofz1ZNUzRU9cpaHCFOVGCMiZRoqoeTpIP7Iayg4YS/mVvTp9gT3vl0r4pfOR
 X9y8MoorTtyY2ndjf+La/GtMjBZXvGe9AuOrs479AC80eV5KpR+nslkwzcY6Nd6uW0ibZdFCG2ps/
 IqtNLWbyVbWwMG8Arhjzgphlr0LdAaKWqH8RV4Dqt1/KfY7I4raDVNnV7slHXMUHRKyPwkT9ZlXaU
 mxA5ABFw==;
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpg8-0006IF-DW
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 18:28:42 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifpdE-0001O7-PY; Fri, 13 Dec 2019 19:25:41 +0100
From: Marc Zyngier <maz@kernel.org>
To: 
Subject: [PATCH 1/7] KVM: Pass mmu_notifier_range down to kvm_unmap_hva_range()
Date: Fri, 13 Dec 2019 18:24:57 +0000
Message-Id: <20191213182503.14460-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213182503.14460-1-maz@kernel.org>
References: <20191213182503.14460-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, jhogan@kernel.org, paulus@ozlabs.org,
 pbonzini@redhat.com, rkrcmar@redhat.com, sean.j.christopherson@intel.com,
 vkuznets@redhat.com, wanpengli@tencent.com, jmattson@google.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_182840_508989_E7BDA49C 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (1.0 points, 5.0 required)
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paul Mackerras <paulus@ozlabs.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

kvm_unmap_hva_range() is currently passed both start and end
fields from the mmu_notifier_range structure. As this struct
now contains important information about the reason of the
unmap (the event field), replace the start/end parameters
with the range struct, and update all architectures.

No functionnal change.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/include/asm/kvm_host.h     | 2 +-
 arch/arm64/include/asm/kvm_host.h   | 2 +-
 arch/mips/include/asm/kvm_host.h    | 2 +-
 arch/mips/kvm/mmu.c                 | 6 ++++--
 arch/powerpc/include/asm/kvm_host.h | 2 +-
 arch/powerpc/kvm/book3s.c           | 5 +++--
 arch/powerpc/kvm/e500_mmu_host.c    | 4 ++--
 arch/x86/include/asm/kvm_host.h     | 3 ++-
 arch/x86/kvm/mmu/mmu.c              | 5 +++--
 arch/x86/kvm/x86.c                  | 4 ++--
 include/linux/kvm_host.h            | 2 +-
 virt/kvm/arm/mmu.c                  | 8 ++++----
 virt/kvm/kvm_main.c                 | 7 +++----
 13 files changed, 28 insertions(+), 24 deletions(-)

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index 556cd818eccf..621c71594499 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -276,7 +276,7 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
 
 #define KVM_ARCH_WANT_MMU_NOTIFIER
 int kvm_unmap_hva_range(struct kvm *kvm,
-			unsigned long start, unsigned long end);
+			const struct mmu_notifier_range *range);
 int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
 
 unsigned long kvm_arm_num_regs(struct kvm_vcpu *vcpu);
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index c61260cf63c5..dd850f5e81e3 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -441,7 +441,7 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
 
 #define KVM_ARCH_WANT_MMU_NOTIFIER
 int kvm_unmap_hva_range(struct kvm *kvm,
-			unsigned long start, unsigned long end);
+			const struct mmu_notifier_range *range);
 int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
 int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end);
 int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
diff --git a/arch/mips/include/asm/kvm_host.h b/arch/mips/include/asm/kvm_host.h
index 41204a49cf95..0ed065870f1b 100644
--- a/arch/mips/include/asm/kvm_host.h
+++ b/arch/mips/include/asm/kvm_host.h
@@ -935,7 +935,7 @@ enum kvm_mips_fault_result kvm_trap_emul_gva_fault(struct kvm_vcpu *vcpu,
 
 #define KVM_ARCH_WANT_MMU_NOTIFIER
 int kvm_unmap_hva_range(struct kvm *kvm,
-			unsigned long start, unsigned long end);
+			const struct mmu_notifier_range *range);
 int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
 int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end);
 int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
diff --git a/arch/mips/kvm/mmu.c b/arch/mips/kvm/mmu.c
index 7dad7a293eae..32ef868258b9 100644
--- a/arch/mips/kvm/mmu.c
+++ b/arch/mips/kvm/mmu.c
@@ -518,9 +518,11 @@ static int kvm_unmap_hva_handler(struct kvm *kvm, gfn_t gfn, gfn_t gfn_end,
 	return 1;
 }
 
-int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end)
+int kvm_unmap_hva_range(struct kvm *kvm,
+			const struct mmu_notifier_range *range)
 {
-	handle_hva_to_gpa(kvm, start, end, &kvm_unmap_hva_handler, NULL);
+	handle_hva_to_gpa(kvm, range->start, range->end,
+			  &kvm_unmap_hva_handler, NULL);
 
 	kvm_mips_callbacks->flush_shadow_all(kvm);
 	return 0;
diff --git a/arch/powerpc/include/asm/kvm_host.h b/arch/powerpc/include/asm/kvm_host.h
index 0a398f2321c2..8cef585e0abe 100644
--- a/arch/powerpc/include/asm/kvm_host.h
+++ b/arch/powerpc/include/asm/kvm_host.h
@@ -58,7 +58,7 @@
 #define KVM_ARCH_WANT_MMU_NOTIFIER
 
 extern int kvm_unmap_hva_range(struct kvm *kvm,
-			       unsigned long start, unsigned long end);
+			       const struct mmu_notifier_range *range);
 extern int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end);
 extern int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
 extern int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
index 58a59ee998e2..a1529a0dd656 100644
--- a/arch/powerpc/kvm/book3s.c
+++ b/arch/powerpc/kvm/book3s.c
@@ -842,9 +842,10 @@ void kvmppc_core_commit_memory_region(struct kvm *kvm,
 	kvm->arch.kvm_ops->commit_memory_region(kvm, mem, old, new, change);
 }
 
-int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end)
+int kvm_unmap_hva_range(struct kvm *kvm,
+			const struct mmu_notifier_range *range)
 {
-	return kvm->arch.kvm_ops->unmap_hva_range(kvm, start, end);
+	return kvm->arch.kvm_ops->unmap_hva_range(kvm, range->start, range->end);
 }
 
 int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end)
diff --git a/arch/powerpc/kvm/e500_mmu_host.c b/arch/powerpc/kvm/e500_mmu_host.c
index 425d13806645..5a7211901063 100644
--- a/arch/powerpc/kvm/e500_mmu_host.c
+++ b/arch/powerpc/kvm/e500_mmu_host.c
@@ -734,10 +734,10 @@ static int kvm_unmap_hva(struct kvm *kvm, unsigned long hva)
 	return 0;
 }
 
-int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end)
+int kvm_unmap_hva_range(struct kvm *kvm, const struct mmu_notifier_range *range)
 {
 	/* kvm_unmap_hva flushes everything anyways */
-	kvm_unmap_hva(kvm, start);
+	kvm_unmap_hva(kvm, range->start);
 
 	return 0;
 }
diff --git a/arch/x86/include/asm/kvm_host.h b/arch/x86/include/asm/kvm_host.h
index b79cd6aa4075..c479fa845d72 100644
--- a/arch/x86/include/asm/kvm_host.h
+++ b/arch/x86/include/asm/kvm_host.h
@@ -1569,7 +1569,8 @@ asmlinkage void kvm_spurious_fault(void);
 	_ASM_EXTABLE(666b, 667b)
 
 #define KVM_ARCH_WANT_MMU_NOTIFIER
-int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end);
+int kvm_unmap_hva_range(struct kvm *kvm,
+			const struct mmu_notifier_range *range);
 int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end);
 int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
 int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index 6f92b40d798c..86831be07c17 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -2040,9 +2040,10 @@ static int kvm_handle_hva(struct kvm *kvm, unsigned long hva,
 	return kvm_handle_hva_range(kvm, hva, hva + 1, data, handler);
 }
 
-int kvm_unmap_hva_range(struct kvm *kvm, unsigned long start, unsigned long end)
+int kvm_unmap_hva_range(struct kvm *kvm,
+			const struct mmu_notifier_range *range);
 {
-	return kvm_handle_hva_range(kvm, start, end, 0, kvm_unmap_rmapp);
+	return kvm_handle_hva_range(kvm, range->start, range->end, 0, kvm_unmap_rmapp);
 }
 
 int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte)
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index cf917139de6b..c1a238f4ee35 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -7942,7 +7942,7 @@ static void vcpu_load_eoi_exitmap(struct kvm_vcpu *vcpu)
 }
 
 int kvm_arch_mmu_notifier_invalidate_range(struct kvm *kvm,
-		unsigned long start, unsigned long end,
+		const struct mmu_notifier_range *range,
 		bool blockable)
 {
 	unsigned long apic_address;
@@ -7952,7 +7952,7 @@ int kvm_arch_mmu_notifier_invalidate_range(struct kvm *kvm,
 	 * Update it when it becomes invalid.
 	 */
 	apic_address = gfn_to_hva(kvm, APIC_DEFAULT_PHYS_BASE >> PAGE_SHIFT);
-	if (start <= apic_address && apic_address < end)
+	if (range->start <= apic_address && apic_address < range->end)
 		kvm_make_all_cpus_request(kvm, KVM_REQ_APIC_PAGE_RELOAD);
 
 	return 0;
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 7ed1e2f8641e..d6e2ae2accc4 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -1391,7 +1391,7 @@ static inline long kvm_arch_vcpu_async_ioctl(struct file *filp,
 #endif /* CONFIG_HAVE_KVM_VCPU_ASYNC_IOCTL */
 
 int kvm_arch_mmu_notifier_invalidate_range(struct kvm *kvm,
-		unsigned long start, unsigned long end, bool blockable);
+		const struct mmu_notifier_range *range, bool blockable);
 
 #ifdef CONFIG_HAVE_KVM_VCPU_RUN_PID_CHANGE
 int kvm_arch_vcpu_run_pid_change(struct kvm_vcpu *vcpu);
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 38b4c910b6c3..078e10c5650e 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -2035,14 +2035,14 @@ static int kvm_unmap_hva_handler(struct kvm *kvm, gpa_t gpa, u64 size, void *dat
 	return 0;
 }
 
-int kvm_unmap_hva_range(struct kvm *kvm,
-			unsigned long start, unsigned long end)
+int kvm_unmap_hva_range(struct kvm *kvm, const struct mmu_notifier_range *range)
 {
 	if (!kvm->arch.pgd)
 		return 0;
 
-	trace_kvm_unmap_hva_range(start, end);
-	handle_hva_to_gpa(kvm, start, end, &kvm_unmap_hva_handler, NULL);
+	trace_kvm_unmap_hva_range(range->start, range->end);
+	handle_hva_to_gpa(kvm, range->start, range->end,
+			  &kvm_unmap_hva_handler, NULL);
 	return 0;
 }
 
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 00268290dcbd..7c3665ad1035 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -158,7 +158,7 @@ static unsigned long long kvm_createvm_count;
 static unsigned long long kvm_active_vms;
 
 __weak int kvm_arch_mmu_notifier_invalidate_range(struct kvm *kvm,
-		unsigned long start, unsigned long end, bool blockable)
+		const struct mmu_notifier_range *range, bool blockable)
 {
 	return 0;
 }
@@ -415,7 +415,7 @@ static int kvm_mmu_notifier_invalidate_range_start(struct mmu_notifier *mn,
 	 * count is also read inside the mmu_lock critical section.
 	 */
 	kvm->mmu_notifier_count++;
-	need_tlb_flush = kvm_unmap_hva_range(kvm, range->start, range->end);
+	need_tlb_flush = kvm_unmap_hva_range(kvm, range);
 	need_tlb_flush |= kvm->tlbs_dirty;
 	/* we've to flush the tlb before the pages can be freed */
 	if (need_tlb_flush)
@@ -423,8 +423,7 @@ static int kvm_mmu_notifier_invalidate_range_start(struct mmu_notifier *mn,
 
 	spin_unlock(&kvm->mmu_lock);
 
-	ret = kvm_arch_mmu_notifier_invalidate_range(kvm, range->start,
-					range->end,
+	ret = kvm_arch_mmu_notifier_invalidate_range(kvm, range,
 					mmu_notifier_range_blockable(range));
 
 	srcu_read_unlock(&kvm->srcu, idx);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
