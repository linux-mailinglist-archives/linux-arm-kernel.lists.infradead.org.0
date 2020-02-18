Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB1816348A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:13:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSTbBf7Wux9WrnKvUqvqIsiFsGRAFGAJ6IQ4HSzzLF4=; b=UM5Ih9RYpPqo7r
	19wHEjM8x3bnfJJZtQoZ26K3FbzVOyPJKriADjefSLFYnCTX2kKy//icX1oGHG3WV1HeUGm/fznb+
	O+9501U0HxGYjDWbL76UfmmO5ypJEFoJSZ5+W4zgTi8B3st+0dRgirp5bhmaWbCDVdO+y0DO3G/Uy
	Heg+xCSJo6kixuxwRRWvpkq8/dKBz4vh/TktTu58QCetKw3UMiJFRDi5BKfjQUcTGgCiH1tc4K3eS
	Cs9JjKdHQcM70fH4b6NzMWsVDuVR/e04Nn44SnR2GW0dESTwguhlXik9UIldzVyLbVY+IjbM3hbUj
	n+l5gdU1EaRVcJG1ayJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ABR-0007eG-6l; Tue, 18 Feb 2020 21:13:33 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4A62-000156-Kr
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:08:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 13:07:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,457,1574150400"; d="scan'208";a="253856440"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 18 Feb 2020 13:07:45 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v6 13/22] KVM: Simplify kvm_free_memslot() and all its
 descendents
Date: Tue, 18 Feb 2020 13:07:27 -0800
Message-Id: <20200218210736.16432-14-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218210736.16432-1-sean.j.christopherson@intel.com>
References: <20200218210736.16432-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_130758_782991_F90B736C 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 =?UTF-8?q?Philippe=20Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that all callers of kvm_free_memslot() pass NULL for @dont, remove
the param from the top-level routine and all arch's implementations.

No functional change intended.

Tested-by: Christoffer Dall <christoffer.dall@arm.com>
Reviewed-by: Peter Xu <peterx@redhat.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/mips/include/asm/kvm_host.h      |  2 +-
 arch/powerpc/include/asm/kvm_ppc.h    |  6 ++----
 arch/powerpc/kvm/book3s.c             |  5 ++---
 arch/powerpc/kvm/book3s_hv.c          |  9 +++------
 arch/powerpc/kvm/book3s_pr.c          |  3 +--
 arch/powerpc/kvm/booke.c              |  3 +--
 arch/powerpc/kvm/powerpc.c            |  5 ++---
 arch/s390/include/asm/kvm_host.h      |  2 +-
 arch/x86/include/asm/kvm_page_track.h |  3 +--
 arch/x86/kvm/mmu/page_track.c         | 15 ++++++---------
 arch/x86/kvm/x86.c                    | 21 ++++++++-------------
 include/linux/kvm_host.h              |  3 +--
 virt/kvm/arm/mmu.c                    |  3 +--
 virt/kvm/kvm_main.c                   | 18 +++++++-----------
 14 files changed, 37 insertions(+), 61 deletions(-)

diff --git a/arch/mips/include/asm/kvm_host.h b/arch/mips/include/asm/kvm_host.h
index 41204a49cf95..2c343c346b79 100644
--- a/arch/mips/include/asm/kvm_host.h
+++ b/arch/mips/include/asm/kvm_host.h
@@ -1133,7 +1133,7 @@ extern unsigned long kvm_mips_get_ramsize(struct kvm *kvm);
 static inline void kvm_arch_hardware_unsetup(void) {}
 static inline void kvm_arch_sync_events(struct kvm *kvm) {}
 static inline void kvm_arch_free_memslot(struct kvm *kvm,
-		struct kvm_memory_slot *free, struct kvm_memory_slot *dont) {}
+					 struct kvm_memory_slot *slot) {}
 static inline void kvm_arch_memslots_updated(struct kvm *kvm, u64 gen) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_vcpu_blocking(struct kvm_vcpu *vcpu) {}
diff --git a/arch/powerpc/include/asm/kvm_ppc.h b/arch/powerpc/include/asm/kvm_ppc.h
index d162649430ba..406ec46304d5 100644
--- a/arch/powerpc/include/asm/kvm_ppc.h
+++ b/arch/powerpc/include/asm/kvm_ppc.h
@@ -200,8 +200,7 @@ extern void kvm_free_hpt_cma(struct page *page, unsigned long nr_pages);
 extern int kvmppc_core_init_vm(struct kvm *kvm);
 extern void kvmppc_core_destroy_vm(struct kvm *kvm);
 extern void kvmppc_core_free_memslot(struct kvm *kvm,
-				     struct kvm_memory_slot *free,
-				     struct kvm_memory_slot *dont);
+				     struct kvm_memory_slot *slot);
 extern int kvmppc_core_prepare_memory_region(struct kvm *kvm,
 				struct kvm_memory_slot *memslot,
 				const struct kvm_userspace_memory_region *mem,
@@ -291,8 +290,7 @@ struct kvmppc_ops {
 	int (*test_age_hva)(struct kvm *kvm, unsigned long hva);
 	void (*set_spte_hva)(struct kvm *kvm, unsigned long hva, pte_t pte);
 	void (*mmu_destroy)(struct kvm_vcpu *vcpu);
-	void (*free_memslot)(struct kvm_memory_slot *free,
-			     struct kvm_memory_slot *dont);
+	void (*free_memslot)(struct kvm_memory_slot *slot);
 	int (*init_vm)(struct kvm *kvm);
 	void (*destroy_vm)(struct kvm *kvm);
 	int (*get_smmu_info)(struct kvm *kvm, struct kvm_ppc_smmu_info *info);
diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
index e9149a815806..97ce6c4f7b48 100644
--- a/arch/powerpc/kvm/book3s.c
+++ b/arch/powerpc/kvm/book3s.c
@@ -804,10 +804,9 @@ int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
 	return kvm->arch.kvm_ops->get_dirty_log(kvm, log);
 }
 
-void kvmppc_core_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
-			      struct kvm_memory_slot *dont)
+void kvmppc_core_free_memslot(struct kvm *kvm, struct kvm_memory_slot *slot)
 {
-	kvm->arch.kvm_ops->free_memslot(free, dont);
+	kvm->arch.kvm_ops->free_memslot(slot);
 }
 
 void kvmppc_core_flush_memslot(struct kvm *kvm, struct kvm_memory_slot *memslot)
diff --git a/arch/powerpc/kvm/book3s_hv.c b/arch/powerpc/kvm/book3s_hv.c
index 460f31f94337..a7353a5a0045 100644
--- a/arch/powerpc/kvm/book3s_hv.c
+++ b/arch/powerpc/kvm/book3s_hv.c
@@ -4447,13 +4447,10 @@ static int kvm_vm_ioctl_get_dirty_log_hv(struct kvm *kvm,
 	return r;
 }
 
-static void kvmppc_core_free_memslot_hv(struct kvm_memory_slot *free,
-					struct kvm_memory_slot *dont)
+static void kvmppc_core_free_memslot_hv(struct kvm_memory_slot *slot)
 {
-	if (!dont || free->arch.rmap != dont->arch.rmap) {
-		vfree(free->arch.rmap);
-		free->arch.rmap = NULL;
-	}
+	vfree(slot->arch.rmap);
+	slot->arch.rmap = NULL;
 }
 
 static int kvmppc_core_prepare_memory_region_hv(struct kvm *kvm,
diff --git a/arch/powerpc/kvm/book3s_pr.c b/arch/powerpc/kvm/book3s_pr.c
index 3077a0cd0e5e..71ae332b91c9 100644
--- a/arch/powerpc/kvm/book3s_pr.c
+++ b/arch/powerpc/kvm/book3s_pr.c
@@ -1942,8 +1942,7 @@ static void kvmppc_core_commit_memory_region_pr(struct kvm *kvm,
 	return;
 }
 
-static void kvmppc_core_free_memslot_pr(struct kvm_memory_slot *free,
-					struct kvm_memory_slot *dont)
+static void kvmppc_core_free_memslot_pr(struct kvm_memory_slot *slot)
 {
 	return;
 }
diff --git a/arch/powerpc/kvm/booke.c b/arch/powerpc/kvm/booke.c
index 44f50fc50976..b0519069892b 100644
--- a/arch/powerpc/kvm/booke.c
+++ b/arch/powerpc/kvm/booke.c
@@ -1771,8 +1771,7 @@ int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
 	return -ENOTSUPP;
 }
 
-void kvmppc_core_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
-			      struct kvm_memory_slot *dont)
+void kvmppc_core_free_memslot(struct kvm *kvm, struct kvm_memory_slot *slot)
 {
 }
 
diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
index 768c4a9269be..838cdcd2db12 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -685,10 +685,9 @@ long kvm_arch_dev_ioctl(struct file *filp,
 	return -EINVAL;
 }
 
-void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
-			   struct kvm_memory_slot *dont)
+void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *slot)
 {
-	kvmppc_core_free_memslot(kvm, free, dont);
+	kvmppc_core_free_memslot(kvm, slot);
 }
 
 int kvm_arch_prepare_memory_region(struct kvm *kvm,
diff --git a/arch/s390/include/asm/kvm_host.h b/arch/s390/include/asm/kvm_host.h
index 1726224e7772..1060508f1a53 100644
--- a/arch/s390/include/asm/kvm_host.h
+++ b/arch/s390/include/asm/kvm_host.h
@@ -921,7 +921,7 @@ static inline void kvm_arch_hardware_disable(void) {}
 static inline void kvm_arch_sync_events(struct kvm *kvm) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_free_memslot(struct kvm *kvm,
-		struct kvm_memory_slot *free, struct kvm_memory_slot *dont) {}
+					 struct kvm_memory_slot *slot) {}
 static inline void kvm_arch_memslots_updated(struct kvm *kvm, u64 gen) {}
 static inline void kvm_arch_flush_shadow_all(struct kvm *kvm) {}
 static inline void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
diff --git a/arch/x86/include/asm/kvm_page_track.h b/arch/x86/include/asm/kvm_page_track.h
index 172f9749dbb2..87bd6025d91d 100644
--- a/arch/x86/include/asm/kvm_page_track.h
+++ b/arch/x86/include/asm/kvm_page_track.h
@@ -49,8 +49,7 @@ struct kvm_page_track_notifier_node {
 void kvm_page_track_init(struct kvm *kvm);
 void kvm_page_track_cleanup(struct kvm *kvm);
 
-void kvm_page_track_free_memslot(struct kvm_memory_slot *free,
-				 struct kvm_memory_slot *dont);
+void kvm_page_track_free_memslot(struct kvm_memory_slot *slot);
 int kvm_page_track_create_memslot(struct kvm_memory_slot *slot,
 				  unsigned long npages);
 
diff --git a/arch/x86/kvm/mmu/page_track.c b/arch/x86/kvm/mmu/page_track.c
index 3521e2d176f2..d125ec379c79 100644
--- a/arch/x86/kvm/mmu/page_track.c
+++ b/arch/x86/kvm/mmu/page_track.c
@@ -19,17 +19,14 @@
 
 #include "mmu.h"
 
-void kvm_page_track_free_memslot(struct kvm_memory_slot *free,
-				 struct kvm_memory_slot *dont)
+void kvm_page_track_free_memslot(struct kvm_memory_slot *slot)
 {
 	int i;
 
-	for (i = 0; i < KVM_PAGE_TRACK_MAX; i++)
-		if (!dont || free->arch.gfn_track[i] !=
-		      dont->arch.gfn_track[i]) {
-			kvfree(free->arch.gfn_track[i]);
-			free->arch.gfn_track[i] = NULL;
-		}
+	for (i = 0; i < KVM_PAGE_TRACK_MAX; i++) {
+		kvfree(slot->arch.gfn_track[i]);
+		slot->arch.gfn_track[i] = NULL;
+	}
 }
 
 int kvm_page_track_create_memslot(struct kvm_memory_slot *slot,
@@ -48,7 +45,7 @@ int kvm_page_track_create_memslot(struct kvm_memory_slot *slot,
 	return 0;
 
 track_free:
-	kvm_page_track_free_memslot(slot, NULL);
+	kvm_page_track_free_memslot(slot);
 	return -ENOMEM;
 }
 
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index b8ee55800c9d..419e07246d0d 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9829,27 +9829,22 @@ void kvm_arch_destroy_vm(struct kvm *kvm)
 	kvm_hv_destroy_vm(kvm);
 }
 
-void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
-			   struct kvm_memory_slot *dont)
+void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *slot)
 {
 	int i;
 
 	for (i = 0; i < KVM_NR_PAGE_SIZES; ++i) {
-		if (!dont || free->arch.rmap[i] != dont->arch.rmap[i]) {
-			kvfree(free->arch.rmap[i]);
-			free->arch.rmap[i] = NULL;
-		}
+		kvfree(slot->arch.rmap[i]);
+		slot->arch.rmap[i] = NULL;
+
 		if (i == 0)
 			continue;
 
-		if (!dont || free->arch.lpage_info[i - 1] !=
-			     dont->arch.lpage_info[i - 1]) {
-			kvfree(free->arch.lpage_info[i - 1]);
-			free->arch.lpage_info[i - 1] = NULL;
-		}
+		kvfree(slot->arch.lpage_info[i - 1]);
+		slot->arch.lpage_info[i - 1] = NULL;
 	}
 
-	kvm_page_track_free_memslot(free, dont);
+	kvm_page_track_free_memslot(slot);
 }
 
 static int kvm_alloc_memslot_metadata(struct kvm_memory_slot *slot,
@@ -10048,7 +10043,7 @@ void kvm_arch_commit_memory_region(struct kvm *kvm,
 
 	/* Free the arrays associated with the old memslot. */
 	if (change == KVM_MR_MOVE)
-		kvm_arch_free_memslot(kvm, old, NULL);
+		kvm_arch_free_memslot(kvm, old);
 }
 
 void kvm_arch_flush_shadow_all(struct kvm *kvm)
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 1807feef26a3..92ef33ee6431 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -669,8 +669,7 @@ int kvm_set_memory_region(struct kvm *kvm,
 			  const struct kvm_userspace_memory_region *mem);
 int __kvm_set_memory_region(struct kvm *kvm,
 			    const struct kvm_userspace_memory_region *mem);
-void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
-			   struct kvm_memory_slot *dont);
+void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *slot);
 void kvm_arch_memslots_updated(struct kvm *kvm, u64 gen);
 int kvm_arch_prepare_memory_region(struct kvm *kvm,
 				struct kvm_memory_slot *memslot,
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 97b87037aff3..8f22efa095f4 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -2349,8 +2349,7 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 	return ret;
 }
 
-void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
-			   struct kvm_memory_slot *dont)
+void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *slot)
 {
 }
 
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 1f56a0d042a0..1ef5e04f7b93 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -580,18 +580,14 @@ static void kvm_destroy_dirty_bitmap(struct kvm_memory_slot *memslot)
 	memslot->dirty_bitmap = NULL;
 }
 
-/*
- * Free any memory in @free but not in @dont.
- */
-static void kvm_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
-			      struct kvm_memory_slot *dont)
+static void kvm_free_memslot(struct kvm *kvm, struct kvm_memory_slot *slot)
 {
-	if (!dont || free->dirty_bitmap != dont->dirty_bitmap)
-		kvm_destroy_dirty_bitmap(free);
+	kvm_destroy_dirty_bitmap(slot);
 
-	kvm_arch_free_memslot(kvm, free, dont);
+	kvm_arch_free_memslot(kvm, slot);
 
-	free->npages = 0;
+	slot->flags = 0;
+	slot->npages = 0;
 }
 
 static void kvm_free_memslots(struct kvm *kvm, struct kvm_memslots *slots)
@@ -602,7 +598,7 @@ static void kvm_free_memslots(struct kvm *kvm, struct kvm_memslots *slots)
 		return;
 
 	kvm_for_each_memslot(memslot, slots)
-		kvm_free_memslot(kvm, memslot, NULL);
+		kvm_free_memslot(kvm, memslot);
 
 	kvfree(slots);
 }
@@ -1060,7 +1056,7 @@ static int kvm_delete_memslot(struct kvm *kvm,
 	if (r)
 		return r;
 
-	kvm_free_memslot(kvm, old, NULL);
+	kvm_free_memslot(kvm, old);
 	return 0;
 }
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
