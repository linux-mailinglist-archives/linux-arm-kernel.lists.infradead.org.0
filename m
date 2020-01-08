Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C47134D8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:29:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHJWW1BNXNoC0Y/jUojN+di3lIBU2S1rNpwF4sDs2VI=; b=iLT7m0PSwP4zm4
	VoBALsgk/oLMy3B6lY0fx3hrOPiYkZZyA/V+Fw1XNKOZlryCTY5OGcDLQS/JTegB24obxdpOUd6WR
	xDDFonJ54NDMKzeTkYH5u8+qy+u9LMzWwYpKf7lAKYun2+wREm9jR08FDlwHRQeJoatSRcumi0zh7
	pEF+FEmyZZntL0urcY1z2UGJpIYsrchqjZymUgFg95IexdrhvjyEdJEW2t1XGcnEw5zahjHVhZheD
	3Fko985jPnqU6n3K/sy5mdQRhIjHeo4BXwOHhFN4ESvqoD8NWTDXM2p8bcNW8JscsYW34V08ClCkU
	YEDSaRpMB/zOSjYi5Faw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHx8-0001hR-2g; Wed, 08 Jan 2020 20:29:18 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHv3-0008CC-2K
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:27:11 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 12:27:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,411,1571727600"; d="scan'208";a="211658374"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2020 12:27:06 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 06/14] KVM: x86/mmu: Refactor THP adjust to prep for changing
 query
Date: Wed,  8 Jan 2020 12:24:40 -0800
Message-Id: <20200108202448.9669-7-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108202448.9669-1-sean.j.christopherson@intel.com>
References: <20200108202448.9669-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_122709_220807_BF64AC3A 
X-CRM114-Status: GOOD (  15.42  )
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

Refactor transparent_hugepage_adjust() in preparation for walking the
host page tables to identify hugepage mappings, initially for THP pages,
and eventualy for HugeTLB and DAX-backed pages as well.  The latter
cases support 1gb pages, i.e. the adjustment logic needs access to the
max allowed level.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/mmu/mmu.c         | 44 +++++++++++++++++-----------------
 arch/x86/kvm/mmu/paging_tmpl.h |  3 +--
 2 files changed, 23 insertions(+), 24 deletions(-)

diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index 8ca6cd04cdf1..30836899be73 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -3329,33 +3329,34 @@ static void direct_pte_prefetch(struct kvm_vcpu *vcpu, u64 *sptep)
 	__direct_pte_prefetch(vcpu, sp, sptep);
 }
 
-static void transparent_hugepage_adjust(struct kvm_vcpu *vcpu,
-					gfn_t gfn, kvm_pfn_t *pfnp,
+static void transparent_hugepage_adjust(struct kvm_vcpu *vcpu, gfn_t gfn,
+					int max_level, kvm_pfn_t *pfnp,
 					int *levelp)
 {
 	kvm_pfn_t pfn = *pfnp;
 	int level = *levelp;
+	kvm_pfn_t mask;
+
+	if (max_level == PT_PAGE_TABLE_LEVEL || level > PT_PAGE_TABLE_LEVEL)
+		return;
+
+	if (is_error_noslot_pfn(pfn) || kvm_is_reserved_pfn(pfn) ||
+	    kvm_is_zone_device_pfn(pfn))
+		return;
+
+	if (!kvm_is_transparent_hugepage(pfn))
+		return;
+
+	level = PT_DIRECTORY_LEVEL;
 
 	/*
-	 * Check if it's a transparent hugepage. If this would be an
-	 * hugetlbfs page, level wouldn't be set to
-	 * PT_PAGE_TABLE_LEVEL and there would be no adjustment done
-	 * here.
+	 * mmu_notifier_retry() was successful and mmu_lock is held, so
+	 * the pmd can't be split from under us.
 	 */
-	if (!is_error_noslot_pfn(pfn) && !kvm_is_reserved_pfn(pfn) &&
-	    !kvm_is_zone_device_pfn(pfn) && level == PT_PAGE_TABLE_LEVEL &&
-	    kvm_is_transparent_hugepage(pfn)) {
-		unsigned long mask;
-
-		/*
-		 * mmu_notifier_retry() was successful and mmu_lock is held, so
-		 * the pmd can't be split from under us.
-		 */
-		*levelp = level = PT_DIRECTORY_LEVEL;
-		mask = KVM_PAGES_PER_HPAGE(level) - 1;
-		VM_BUG_ON((gfn & mask) != (pfn & mask));
-		*pfnp = pfn & ~mask;
-	}
+	*levelp = level;
+	mask = KVM_PAGES_PER_HPAGE(level) - 1;
+	VM_BUG_ON((gfn & mask) != (pfn & mask));
+	*pfnp = pfn & ~mask;
 }
 
 static void disallowed_hugepage_adjust(struct kvm_shadow_walk_iterator it,
@@ -3395,8 +3396,7 @@ static int __direct_map(struct kvm_vcpu *vcpu, gpa_t gpa, int write,
 	if (WARN_ON(!VALID_PAGE(vcpu->arch.mmu->root_hpa)))
 		return RET_PF_RETRY;
 
-	if (likely(max_level > PT_PAGE_TABLE_LEVEL))
-		transparent_hugepage_adjust(vcpu, gfn, &pfn, &level);
+	transparent_hugepage_adjust(vcpu, gfn, max_level, &pfn, &level);
 
 	trace_kvm_mmu_spte_requested(gpa, level, pfn);
 	for_each_shadow_entry(vcpu, gpa, it) {
diff --git a/arch/x86/kvm/mmu/paging_tmpl.h b/arch/x86/kvm/mmu/paging_tmpl.h
index b53bed3c901c..0029f7870865 100644
--- a/arch/x86/kvm/mmu/paging_tmpl.h
+++ b/arch/x86/kvm/mmu/paging_tmpl.h
@@ -673,8 +673,7 @@ static int FNAME(fetch)(struct kvm_vcpu *vcpu, gpa_t addr,
 	gfn = gw->gfn | ((addr & PT_LVL_OFFSET_MASK(gw->level)) >> PAGE_SHIFT);
 	base_gfn = gfn;
 
-	if (max_level > PT_PAGE_TABLE_LEVEL)
-		transparent_hugepage_adjust(vcpu, gw->gfn, &pfn, &hlevel);
+	transparent_hugepage_adjust(vcpu, gw->gfn, max_level, &pfn, &hlevel);
 
 	trace_kvm_mmu_spte_requested(addr, gw->level, pfn);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
