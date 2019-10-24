Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B14E4041
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 01:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEXOokonBCsHxR/mr69O4jUsdHN+oZsA0XqlN9gSEHg=; b=Dc944Ajt5FFNP5
	SyqEBqWJBJyR1Oysel9rGzTwiKM95C93+DAIdAFmep9z2yPo4c7s9nByTUHM8lyAvrx5H/vVaQQH+
	AtrS82cIYMUM8VY+EKnQfIDI3uEgQFtFm5pdoW44VsXO06lALaI6CYVSsslwQp4RtfMTLDG88fHlg
	n8O6ymKJGK6LXM04w0Wx/QApWNm7EYvhtojQ0xWeZ80dEJpwkYFbo1OA4SebE2BVtyd1lK26/TqbU
	1gTgOTdd28EsqTRlExyyxUc2A4HEoFmx5gPzo1hFuCtu8pAtPAAjOrM40jZhnBr7rJxfq+eCaiThr
	QTaRQiOCCRSrJoRPzQ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNmGI-0007dk-CO; Thu, 24 Oct 2019 23:11:22 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNmD1-0003jB-2e
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 23:08:01 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 16:07:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,226,1569308400"; d="scan'208";a="202445860"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by orsmga006.jf.intel.com with ESMTP; 24 Oct 2019 16:07:46 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v3 10/15] KVM: Simplify kvm_free_memslot() and all its
 descendents
Date: Thu, 24 Oct 2019 16:07:39 -0700
Message-Id: <20191024230744.14543-11-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191024230744.14543-1-sean.j.christopherson@intel.com>
References: <20191024230744.14543-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_160759_214126_B6632629 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 kvm-ppc@vger.kernel.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that all callers of kvm_free_memslot() pass NULL for @dont, remove
the param from the top-level routine and all arch's implementations.

No functional change intended.

Tested-by: Christoffer Dall <christoffer.dall@arm.com>
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
 arch/x86/kvm/page_track.c             | 15 ++++++---------
 arch/x86/kvm/x86.c                    | 19 +++++++------------
 include/linux/kvm_host.h              |  3 +--
 virt/kvm/arm/mmu.c                    |  3 +--
 virt/kvm/kvm_main.c                   | 18 +++++++-----------
 14 files changed, 36 insertions(+), 60 deletions(-)

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
index 8fe59be4d180..35c860a96cef 100644
--- a/arch/powerpc/include/asm/kvm_ppc.h
+++ b/arch/powerpc/include/asm/kvm_ppc.h
@@ -201,8 +201,7 @@ extern void kvm_free_hpt_cma(struct page *page, unsigned long nr_pages);
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
index 111b39a5250d..a5d4a1014fdf 100644
--- a/arch/powerpc/kvm/book3s.c
+++ b/arch/powerpc/kvm/book3s.c
@@ -834,10 +834,9 @@ int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
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
index 4e5664379329..14906f7c12c5 100644
--- a/arch/powerpc/kvm/book3s_hv.c
+++ b/arch/powerpc/kvm/book3s_hv.c
@@ -4452,13 +4452,10 @@ static int kvm_vm_ioctl_get_dirty_log_hv(struct kvm *kvm,
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
index 5fceb1da5fde..5368a5dbac22 100644
--- a/arch/powerpc/kvm/book3s_pr.c
+++ b/arch/powerpc/kvm/book3s_pr.c
@@ -1918,8 +1918,7 @@ static void kvmppc_core_commit_memory_region_pr(struct kvm *kvm,
 	return;
 }
 
-static void kvmppc_core_free_memslot_pr(struct kvm_memory_slot *free,
-					struct kvm_memory_slot *dont)
+static void kvmppc_core_free_memslot_pr(struct kvm_memory_slot *slot)
 {
 	return;
 }
diff --git a/arch/powerpc/kvm/booke.c b/arch/powerpc/kvm/booke.c
index cf2845e147c5..a22ff567724a 100644
--- a/arch/powerpc/kvm/booke.c
+++ b/arch/powerpc/kvm/booke.c
@@ -1801,8 +1801,7 @@ int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
 	return -ENOTSUPP;
 }
 
-void kvmppc_core_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
-			      struct kvm_memory_slot *dont)
+void kvmppc_core_free_memslot(struct kvm *kvm, struct kvm_memory_slot *slot)
 {
 }
 
diff --git a/arch/powerpc/kvm/powerpc.c b/arch/powerpc/kvm/powerpc.c
index bb427543f8a3..622f77d73c24 100644
--- a/arch/powerpc/kvm/powerpc.c
+++ b/arch/powerpc/kvm/powerpc.c
@@ -681,10 +681,9 @@ long kvm_arch_dev_ioctl(struct file *filp,
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
index abe60268335d..43301e8a5cbd 100644
--- a/arch/s390/include/asm/kvm_host.h
+++ b/arch/s390/include/asm/kvm_host.h
@@ -916,7 +916,7 @@ static inline void kvm_arch_sync_events(struct kvm *kvm) {}
 static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
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
 
diff --git a/arch/x86/kvm/page_track.c b/arch/x86/kvm/page_track.c
index 3521e2d176f2..d125ec379c79 100644
--- a/arch/x86/kvm/page_track.c
+++ b/arch/x86/kvm/page_track.c
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
index aed1a4c5c999..b2a66c0143f9 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9603,27 +9603,22 @@ void kvm_arch_destroy_vm(struct kvm *kvm)
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
 
 static int kvm_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 273fa081ae91..9ee4eabaf457 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -677,8 +677,7 @@ int kvm_set_memory_region(struct kvm *kvm,
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
index f264de85f648..f3241b268d49 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -2353,8 +2353,7 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 	return ret;
 }
 
-void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
-			   struct kvm_memory_slot *dont)
+void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *slot)
 {
 }
 
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 2163a7157c63..ff13cac95b14 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -549,18 +549,14 @@ static void kvm_destroy_dirty_bitmap(struct kvm_memory_slot *memslot)
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
@@ -571,7 +567,7 @@ static void kvm_free_memslots(struct kvm *kvm, struct kvm_memslots *slots)
 		return;
 
 	kvm_for_each_memslot(memslot, slots)
-		kvm_free_memslot(kvm, memslot, NULL);
+		kvm_free_memslot(kvm, memslot);
 
 	kvfree(slots);
 }
@@ -997,7 +993,7 @@ static int kvm_delete_memslot(struct kvm *kvm,
 	if (r)
 		return r;
 
-	kvm_free_memslot(kvm, old, NULL);
+	kvm_free_memslot(kvm, old);
 	return 0;
 }
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
