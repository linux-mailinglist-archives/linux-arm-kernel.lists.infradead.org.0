Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02776134D9F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:31:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6NZAbViX5XBik21511cYfkJeg8RVAWp8z0i5lBD8I3A=; b=PPbZEDogTWOAKt
	vGEBmYIHsijvJp6JUabVqJ41pmhALDuwRITxLwQXeAoIvKQWCdFzoiwYoDpngei+ydUGyATVOCnjW
	U7k07+oRP7xqrv4HTE8y8CJxP+lXnCi9+25yJzL0M/H/8Gd4TlKVly/Tl7Y+rU0frToihXQeEUtd8
	ZAAsMnaoqa2b/3HAW90/nKRlk1bGx+mTXVkNujcm3nEK37nYTpPpymfoT1exnThJ+yD2dNU+xNe9e
	iOMH9RZR6FSnVBScUKgclMWFqHHhsLuNDC5SuVCtaSILJ26QeOEF/GVLoBBcGM+9y//1OntfaPMdP
	XwPA3rVu/LCz3jjZDT6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHzA-0004ml-IS; Wed, 08 Jan 2020 20:31:24 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHvA-0008CC-6T
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:27:18 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 12:27:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,411,1571727600"; d="scan'208";a="211658401"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2020 12:27:07 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 14/14] KVM: x86/mmu: Use huge pages for DAX-backed files
Date: Wed,  8 Jan 2020 12:24:48 -0800
Message-Id: <20200108202448.9669-15-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108202448.9669-1-sean.j.christopherson@intel.com>
References: <20200108202448.9669-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_122716_391145_118DD768 
X-CRM114-Status: GOOD (  14.34  )
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

Walk the host page tables to identify hugepage mappings for ZONE_DEVICE
pfns, i.e. DAX pages.  Explicitly query kvm_is_zone_device_pfn() when
deciding whether or not to bother walking the host page tables, as DAX
pages do not set up the head/tail infrastructure, i.e. will return false
for PageCompound() even when using huge pages.

Zap ZONE_DEVICE sptes when disabling dirty logging, e.g. if live
migration fails, to allow KVM to rebuild large pages for DAX-based
mappings.  Presumably DAX favors large pages, and worst case scenario is
a minor performance hit as KVM will need to re-fault all DAX-based
pages.

Suggested-by: Barret Rhoden <brho@google.com>
Cc: David Hildenbrand <david@redhat.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Jason Zeng <jason.zeng@intel.com>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Liran Alon <liran.alon@oracle.com>
Cc: linux-nvdimm <linux-nvdimm@lists.01.org>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/mmu/mmu.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index 1e4e0ac169a7..324e1919722f 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -3250,7 +3250,7 @@ static int host_pfn_mapping_level(struct kvm_vcpu *vcpu, gfn_t gfn,
 		     PT_DIRECTORY_LEVEL != (int)PG_LEVEL_2M ||
 		     PT_PDPE_LEVEL != (int)PG_LEVEL_1G);
 
-	if (!PageCompound(pfn_to_page(pfn)))
+	if (!PageCompound(pfn_to_page(pfn)) && !kvm_is_zone_device_pfn(pfn))
 		return PT_PAGE_TABLE_LEVEL;
 
 	/*
@@ -3282,8 +3282,7 @@ static int kvm_mmu_hugepage_adjust(struct kvm_vcpu *vcpu, gfn_t gfn,
 	if (unlikely(max_level == PT_PAGE_TABLE_LEVEL))
 		return PT_PAGE_TABLE_LEVEL;
 
-	if (is_error_noslot_pfn(pfn) || kvm_is_reserved_pfn(pfn) ||
-	    kvm_is_zone_device_pfn(pfn))
+	if (is_error_noslot_pfn(pfn) || kvm_is_reserved_pfn(pfn))
 		return PT_PAGE_TABLE_LEVEL;
 
 	slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
@@ -5910,8 +5909,8 @@ static bool kvm_mmu_zap_collapsible_spte(struct kvm *kvm,
 		 * mapping if the indirect sp has level = 1.
 		 */
 		if (sp->role.direct && !kvm_is_reserved_pfn(pfn) &&
-		    !kvm_is_zone_device_pfn(pfn) &&
-		    PageCompound(pfn_to_page(pfn))) {
+		    (kvm_is_zone_device_pfn(pfn) ||
+		     PageCompound(pfn_to_page(pfn)))) {
 			pte_list_remove(rmap_head, sptep);
 
 			if (kvm_available_flush_tlb_with_range())
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
