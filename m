Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1C3134D9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:30:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYH5+xF33FeZf5YQOlcf8RUWMX4V1uHrhOgHFucX72M=; b=Yk+AHoQiciq5qm
	VUdYGoJacbk3Thq4xkYegHN3a/hmjrCEBGHGpXfJrX8VY1FrWT9Qd6ymwwvDk93pzEFLFKeXWOQEl
	v7dAqNIaDk8Ytm31B+V1sfhV3v3DEQuHhmaamDbRx9tY39d1RQ13kvqDVYKXoVZqqzqw6A/qtZuRH
	5609vez51SXWaMvfod01un8SQ4C7FkurIW0qVCCogMkY3FMEEeZ5yiF/zTm4uP9DAcw2TERwhJ1b5
	srWGznGitTF+EZBGPUJfsEMYhuZ/qLKr6vsCnL1Btv8FFjJuDkuqGLF5aQ/QJacYqsPX60lRiicAS
	AvbwmyD03liMWZcsVutg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHyT-000462-UF; Wed, 08 Jan 2020 20:30:41 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHv9-0008Gp-8g
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:27:16 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 12:27:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,411,1571727600"; d="scan'208";a="211658398"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2020 12:27:07 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 13/14] KVM: x86/mmu: Remove lpage_is_disallowed() check from
 set_spte()
Date: Wed,  8 Jan 2020 12:24:47 -0800
Message-Id: <20200108202448.9669-14-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108202448.9669-1-sean.j.christopherson@intel.com>
References: <20200108202448.9669-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_122715_368762_28936A73 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
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

Remove the late "lpage is disallowed" check from set_spte() now that the
initial check is performed after acquiring mmu_lock.  Fold the guts of
the remaining helper, __mmu_gfn_lpage_is_disallowed(), into
kvm_mmu_hugepage_adjust() to eliminate the unnecessary slot !NULL check.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/mmu/mmu.c | 39 +++------------------------------------
 1 file changed, 3 insertions(+), 36 deletions(-)

diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index f2667fe0dc75..1e4e0ac169a7 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -1264,28 +1264,6 @@ static void unaccount_huge_nx_page(struct kvm *kvm, struct kvm_mmu_page *sp)
 	list_del(&sp->lpage_disallowed_link);
 }
 
-static bool __mmu_gfn_lpage_is_disallowed(gfn_t gfn, int level,
-					  struct kvm_memory_slot *slot)
-{
-	struct kvm_lpage_info *linfo;
-
-	if (slot) {
-		linfo = lpage_info_slot(gfn, slot, level);
-		return !!linfo->disallow_lpage;
-	}
-
-	return true;
-}
-
-static bool mmu_gfn_lpage_is_disallowed(struct kvm_vcpu *vcpu, gfn_t gfn,
-					int level)
-{
-	struct kvm_memory_slot *slot;
-
-	slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
-	return __mmu_gfn_lpage_is_disallowed(gfn, level, slot);
-}
-
 static inline bool memslot_valid_for_gpte(struct kvm_memory_slot *slot,
 					  bool no_dirty_log)
 {
@@ -3078,18 +3056,6 @@ static int set_spte(struct kvm_vcpu *vcpu, u64 *sptep,
 	spte |= (u64)pfn << PAGE_SHIFT;
 
 	if (pte_access & ACC_WRITE_MASK) {
-
-		/*
-		 * Legacy code to handle an obsolete scenario where a different
-		 * vcpu creates new sp in the window between this vcpu's query
-		 * of lpage_is_disallowed() and acquiring mmu_lock.  No longer
-		 * necessary now that lpage_is_disallowed() is called after
-		 * acquiring mmu_lock.
-		 */
-		if (level > PT_PAGE_TABLE_LEVEL &&
-		    mmu_gfn_lpage_is_disallowed(vcpu, gfn, level))
-			goto done;
-
 		spte |= PT_WRITABLE_MASK | SPTE_MMU_WRITEABLE;
 
 		/*
@@ -3121,7 +3087,6 @@ static int set_spte(struct kvm_vcpu *vcpu, u64 *sptep,
 set_pte:
 	if (mmu_spte_update(sptep, spte))
 		ret |= SET_SPTE_NEED_REMOTE_TLB_FLUSH;
-done:
 	return ret;
 }
 
@@ -3309,6 +3274,7 @@ static int kvm_mmu_hugepage_adjust(struct kvm_vcpu *vcpu, gfn_t gfn,
 				   int max_level, kvm_pfn_t *pfnp)
 {
 	struct kvm_memory_slot *slot;
+	struct kvm_lpage_info *linfo;
 	kvm_pfn_t pfn = *pfnp;
 	kvm_pfn_t mask;
 	int level;
@@ -3326,7 +3292,8 @@ static int kvm_mmu_hugepage_adjust(struct kvm_vcpu *vcpu, gfn_t gfn,
 
 	max_level = min(max_level, kvm_x86_ops->get_lpage_level());
 	for ( ; max_level > PT_PAGE_TABLE_LEVEL; max_level--) {
-		if (!__mmu_gfn_lpage_is_disallowed(gfn, max_level, slot))
+		linfo = lpage_info_slot(gfn, slot, max_level);
+		if (!linfo->disallow_lpage)
 			break;
 	}
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
