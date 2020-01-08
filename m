Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520ED134D89
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:29:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ViheKtnbLGy9aJD0jJUl+naVfHAo/vyw0X4ZTq0ngHQ=; b=aZVPSrMWTQ3O3+
	6IZl0LD45Oqm7fvY/8e8CsMjgwFlpAYM97qry5vOpaYF/bl2b2HHx7OrqYSyxZn8uzS9UWqFIBOdx
	1sysoqigPE/Hc9m+qHyBozwQxQJZ4VBzto6iIjLwxRscyuTLEjZTEN6O7QC0JewJxHtHtvhSNoR3o
	6LVwNI5dr8Ytt/aYaag6Ilh2KJ30xLuA3225LhZcrryJaT6oc1/JC9caeHNZsEW4nCDvdRm+3i6Rl
	QFnRCmyhdOqtxX77u4J18KHxIp7XrUIVjAinvvIIvhEecNRBgi1OS9433mAVj0LKr8qx1jjSeZoeV
	PIdbC7EkNWIVGymyaSwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHws-0001PB-8E; Wed, 08 Jan 2020 20:29:02 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHv3-0008ED-A3
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:27:11 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 12:27:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,411,1571727600"; d="scan'208";a="211658377"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2020 12:27:06 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 07/14] KVM: x86/mmu: Walk host page tables to find THP mappings
Date: Wed,  8 Jan 2020 12:24:41 -0800
Message-Id: <20200108202448.9669-8-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108202448.9669-1-sean.j.christopherson@intel.com>
References: <20200108202448.9669-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_122709_449999_E8D48CEF 
X-CRM114-Status: GOOD (  16.90  )
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

Explicitly walk the host page tables to identify THP mappings instead
of relying solely on the metadata in struct page.  This sets the stage
for using a common method of identifying huge mappings regardless of the
underlying implementation (HugeTLB vs THB vs DAX), and hopefully avoids
the pitfalls of relying on metadata to identify THP mappings, e.g. see
commit 169226f7e0d2 ("mm: thp: handle page cache THP correctly in
PageTransCompoundMap") and the need for KVM to explicitly check for a
THP compound page.  KVM will also naturally work with 1gb THP pages, if
they are ever supported.

Walking the tables for THP mappings is likely marginally slower than
querying metadata, but a future patch will reuse the walk to identify
HugeTLB mappings, at which point eliminating the existing VMA lookup for
HugeTLB will make this a net positive.

Cc: Andrea Arcangeli <aarcange@redhat.com>
Cc: Barret Rhoden <brho@google.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/mmu/mmu.c | 40 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index 30836899be73..4bd7f745b56d 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -3329,6 +3329,41 @@ static void direct_pte_prefetch(struct kvm_vcpu *vcpu, u64 *sptep)
 	__direct_pte_prefetch(vcpu, sp, sptep);
 }
 
+static int host_pfn_mapping_level(struct kvm_vcpu *vcpu, gfn_t gfn,
+				  kvm_pfn_t pfn)
+{
+	struct kvm_memory_slot *slot;
+	unsigned long hva;
+	pte_t *pte;
+	int level;
+
+	BUILD_BUG_ON(PT_PAGE_TABLE_LEVEL != (int)PG_LEVEL_4K ||
+		     PT_DIRECTORY_LEVEL != (int)PG_LEVEL_2M ||
+		     PT_PDPE_LEVEL != (int)PG_LEVEL_1G);
+
+	if (!PageCompound(pfn_to_page(pfn)))
+		return PT_PAGE_TABLE_LEVEL;
+
+	/*
+	 * Manually do the equivalent of kvm_vcpu_gfn_to_hva() to avoid the
+	 * "writable" check in __gfn_to_hva_many(), which will always fail on
+	 * read-only memslots due to gfn_to_hva() assuming writes.  Earlier
+	 * page fault steps have already verified the guest isn't writing a
+	 * read-only memslot.
+	 */
+	slot = kvm_vcpu_gfn_to_memslot(vcpu, gfn);
+	if (!memslot_valid_for_gpte(slot, true))
+		return PT_PAGE_TABLE_LEVEL;
+
+	hva = __gfn_to_hva_memslot(slot, gfn);
+
+	pte = lookup_address_in_mm(vcpu->kvm->mm, hva, &level);
+	if (unlikely(!pte))
+		return PT_PAGE_TABLE_LEVEL;
+
+	return level;
+}
+
 static void transparent_hugepage_adjust(struct kvm_vcpu *vcpu, gfn_t gfn,
 					int max_level, kvm_pfn_t *pfnp,
 					int *levelp)
@@ -3344,10 +3379,11 @@ static void transparent_hugepage_adjust(struct kvm_vcpu *vcpu, gfn_t gfn,
 	    kvm_is_zone_device_pfn(pfn))
 		return;
 
-	if (!kvm_is_transparent_hugepage(pfn))
+	level = host_pfn_mapping_level(vcpu, gfn, pfn);
+	if (level == PT_PAGE_TABLE_LEVEL)
 		return;
 
-	level = PT_DIRECTORY_LEVEL;
+	level = min(level, max_level);
 
 	/*
 	 * mmu_notifier_retry() was successful and mmu_lock is held, so
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
