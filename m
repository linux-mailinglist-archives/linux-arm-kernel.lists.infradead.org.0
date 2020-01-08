Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC68134D9E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:31:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nae8+vWjzUUfBAIq0OXkHKzU+q97iNEz+9Y4T+DGdZA=; b=M7ZtNjX45SbdNg
	6ybS6me15RkMpqajykFArEY7jUvek/TEAg/XoVH2D8dzvkBFhSVzVyVmIIBPbwuegiv7zx8Q1Ev6Y
	9HdWsmENP+xo64PWKIoViCyFzlynM9IAS8UcE4jm3vTcPUfOIP5feRBUVwA9D0py3jiMMwJBhoXWp
	3syJgHZEqh39La/eflkA4lUYicxXpPc3K/A2MQNBJgvdrtVJ2s3sRCn9NUKmjOedoW0eQXN2vU/um
	hDpnZ7IVHKZdfqBHxhA5fSsdAAOmLOoIrWEAgNDdWa+vAwWJZK5w5sJavLsw22zszZkpZBt/NSxTh
	C9H6llG0N7BEYCNJRokw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHz1-0004YA-1Z; Wed, 08 Jan 2020 20:31:15 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHv7-0008ED-LI
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:27:15 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 12:27:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,411,1571727600"; d="scan'208";a="211658395"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2020 12:27:07 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 12/14] KVM: x86/mmu: Fold max_mapping_level() into
 kvm_mmu_hugepage_adjust()
Date: Wed,  8 Jan 2020 12:24:46 -0800
Message-Id: <20200108202448.9669-13-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108202448.9669-1-sean.j.christopherson@intel.com>
References: <20200108202448.9669-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_122713_784886_434A828D 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
 David Hildenbrand <david@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Paul Mackerras <paulus@ozlabs.org>,
 linux-mm@kvack.org, kvmarm@lists.cs.columbia.edu,
 Andrea Arcangeli <aarcange@redhat.com>, Dave Jiang <dave.jiang@intel.com>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>,
 syzbot+c9d1fb51ac9d0d10c39d@syzkaller.appspotmail.com,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Barret Rhoden <brho@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, Liran Alon <liran.alon@oracle.com>,
 Andy Lutomirski <luto@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>, Jason Zeng <jason.zeng@intel.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fold max_mapping_level() into kvm_mmu_hugepage_adjust() now that HugeTLB
mappings are handled in kvm_mmu_hugepage_adjust(), i.e. there isn't a
need to pre-calculate the max mapping level.  Co-locating all hugepage
checks eliminates a memslot lookup, at the cost of performing the
__mmu_gfn_lpage_is_disallowed() checks while holding mmu_lock.

The latency of lpage_is_disallowed() is likely negligible relative to
the rest of the code run while holding mmu_lock, and can be offset to
some extent by eliminating the mmu_gfn_lpage_is_disallowed() check in
set_spte() in a future patch.  Eliminating the check in set_spte() is
made possible by performing the initial lpage_is_disallowed() checks
while holding mmu_lock.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/mmu/mmu.c         | 60 ++++++++++++++--------------------
 arch/x86/kvm/mmu/paging_tmpl.h |  2 --
 2 files changed, 24 insertions(+), 38 deletions(-)

diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index f93b0c5e4170..f2667fe0dc75 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -1310,27 +1310,6 @@ gfn_to_memslot_dirty_bitmap(struct kvm_vcpu *vcpu, gfn_t gfn,
 	return slot;
 }
 
-static int max_mapping_level(struct kvm_vcpu *vcpu, gfn_t gfn,
-			     int max_level)
-{
-	struct kvm_memory_slot *slot;
-
-	if (unlikely(max_level == PT_PAGE_TABLE_LEVEL))
-		return PT_PAGE_TABLE_LEVEL;
-
-	slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
-	if (!memslot_valid_for_gpte(slot, true))
-		return PT_PAGE_TABLE_LEVEL;
-
-	max_level = min(max_level, kvm_x86_ops->get_lpage_level());
-	for ( ; max_level > PT_PAGE_TABLE_LEVEL; max_level--) {
-		if (!__mmu_gfn_lpage_is_disallowed(gfn, max_level, slot))
-			break;
-	}
-
-	return max_level;
-}
-
 /*
  * About rmap_head encoding:
  *
@@ -3101,10 +3080,11 @@ static int set_spte(struct kvm_vcpu *vcpu, u64 *sptep,
 	if (pte_access & ACC_WRITE_MASK) {
 
 		/*
-		 * Other vcpu creates new sp in the window between
-		 * max_mapping_level() and acquiring mmu-lock. We can
-		 * allow guest to retry the access, the mapping can
-		 * be fixed if guest refault.
+		 * Legacy code to handle an obsolete scenario where a different
+		 * vcpu creates new sp in the window between this vcpu's query
+		 * of lpage_is_disallowed() and acquiring mmu_lock.  No longer
+		 * necessary now that lpage_is_disallowed() is called after
+		 * acquiring mmu_lock.
 		 */
 		if (level > PT_PAGE_TABLE_LEVEL &&
 		    mmu_gfn_lpage_is_disallowed(vcpu, gfn, level))
@@ -3295,9 +3275,8 @@ static void direct_pte_prefetch(struct kvm_vcpu *vcpu, u64 *sptep)
 }
 
 static int host_pfn_mapping_level(struct kvm_vcpu *vcpu, gfn_t gfn,
-				  kvm_pfn_t pfn)
+				  kvm_pfn_t pfn, struct kvm_memory_slot *slot)
 {
-	struct kvm_memory_slot *slot;
 	unsigned long hva;
 	pte_t *pte;
 	int level;
@@ -3310,16 +3289,13 @@ static int host_pfn_mapping_level(struct kvm_vcpu *vcpu, gfn_t gfn,
 		return PT_PAGE_TABLE_LEVEL;
 
 	/*
-	 * Manually do the equivalent of kvm_vcpu_gfn_to_hva() to avoid the
+	 * Note, using the already-retrieved memslot and __gfn_to_hva_memslot()
+	 * is not solely for performance, it's also necessary to avoid the
 	 * "writable" check in __gfn_to_hva_many(), which will always fail on
 	 * read-only memslots due to gfn_to_hva() assuming writes.  Earlier
 	 * page fault steps have already verified the guest isn't writing a
 	 * read-only memslot.
 	 */
-	slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
-	if (!memslot_valid_for_gpte(slot, true))
-		return PT_PAGE_TABLE_LEVEL;
-
 	hva = __gfn_to_hva_memslot(slot, gfn);
 
 	pte = lookup_address_in_mm(vcpu->kvm->mm, hva, &level);
@@ -3332,18 +3308,32 @@ static int host_pfn_mapping_level(struct kvm_vcpu *vcpu, gfn_t gfn,
 static int kvm_mmu_hugepage_adjust(struct kvm_vcpu *vcpu, gfn_t gfn,
 				   int max_level, kvm_pfn_t *pfnp)
 {
+	struct kvm_memory_slot *slot;
 	kvm_pfn_t pfn = *pfnp;
 	kvm_pfn_t mask;
 	int level;
 
-	if (max_level == PT_PAGE_TABLE_LEVEL)
+	if (unlikely(max_level == PT_PAGE_TABLE_LEVEL))
 		return PT_PAGE_TABLE_LEVEL;
 
 	if (is_error_noslot_pfn(pfn) || kvm_is_reserved_pfn(pfn) ||
 	    kvm_is_zone_device_pfn(pfn))
 		return PT_PAGE_TABLE_LEVEL;
 
-	level = host_pfn_mapping_level(vcpu, gfn, pfn);
+	slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
+	if (!memslot_valid_for_gpte(slot, true))
+		return PT_PAGE_TABLE_LEVEL;
+
+	max_level = min(max_level, kvm_x86_ops->get_lpage_level());
+	for ( ; max_level > PT_PAGE_TABLE_LEVEL; max_level--) {
+		if (!__mmu_gfn_lpage_is_disallowed(gfn, max_level, slot))
+			break;
+	}
+
+	if (max_level == PT_PAGE_TABLE_LEVEL)
+		return PT_PAGE_TABLE_LEVEL;
+
+	level = host_pfn_mapping_level(vcpu, gfn, pfn, slot);
 	if (level == PT_PAGE_TABLE_LEVEL)
 		return level;
 
@@ -4182,8 +4172,6 @@ static int direct_page_fault(struct kvm_vcpu *vcpu, gpa_t gpa, u32 error_code,
 	if (lpage_disallowed)
 		max_level = PT_PAGE_TABLE_LEVEL;
 
-	max_level = max_mapping_level(vcpu, gfn, max_level);
-
 	if (fast_page_fault(vcpu, gpa, error_code))
 		return RET_PF_RETRY;
 
diff --git a/arch/x86/kvm/mmu/paging_tmpl.h b/arch/x86/kvm/mmu/paging_tmpl.h
index 0560982eda8b..ea174d85700a 100644
--- a/arch/x86/kvm/mmu/paging_tmpl.h
+++ b/arch/x86/kvm/mmu/paging_tmpl.h
@@ -817,8 +817,6 @@ static int FNAME(page_fault)(struct kvm_vcpu *vcpu, gpa_t addr, u32 error_code,
 	else
 		max_level = walker.level;
 
-	max_level = max_mapping_level(vcpu, walker.gfn, max_level);
-
 	mmu_seq = vcpu->kvm->mmu_notifier_seq;
 	smp_rmb();
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
