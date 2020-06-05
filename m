Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BA21F0297
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 23:45:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSs5NZnK/Ps/EWAu9jRvAWoRgy7T+QYqLcFCFJc3J2E=; b=VmRafvwNB3wQED
	Djfmk70m92gAH1sA7NGpM21YJqt3bVh8PLdi3e80KdDA6g06eSGRf80ebYCTD7Qx52RE88EQF8TSE
	0kitDOjo7IsCRmjFTV252uxeHgYgXRpN6ZiG1vR5o5yu4tgd4hY16ZQsENm10heaC+TpExC+kBsKr
	Qu/8LAaMrUl5PeSYRYNYFxAh5/qsFRyH/f3ZRu3pUgfA+egA0nj0I5jWWVMVSO4Vv8dTgBzZB+qLy
	L556g/QQuVIV6cWllScpCkbKtI9a+l/ZLsDXrxpnNluB/7qHOJGyYNSzlAGwYUrdHIXJqIdFeu5C5
	o/o9iaDU0unxwEW58LpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhK9d-0004Um-VW; Fri, 05 Jun 2020 21:45:34 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhK3a-0002mq-JD
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 21:39:21 +0000
IronPort-SDR: mVWrFXnNXgPuT48zgM1tlncAeI/dZd1eutpcqjZvfI+zjFgJZLm/kD/87gbAlSnhfNkvAYS4/J
 80IC+4W5HQpw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 14:39:08 -0700
IronPort-SDR: +madCm+KmloElv9osFmV7Ja+xOkWJWCKaF5zKJaSRuKF0tASBAfaEK85fyzJDgo8vmm/thWRB7
 8Etr/rL0peCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,477,1583222400"; d="scan'208";a="287860905"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.152])
 by orsmga002.jf.intel.com with ESMTP; 05 Jun 2020 14:39:08 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 13/21] KVM: x86/mmu: Prepend "kvm_" to memory cache helpers
 that will be global
Date: Fri,  5 Jun 2020 14:38:45 -0700
Message-Id: <20200605213853.14959-14-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200605213853.14959-1-sean.j.christopherson@intel.com>
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_143918_693715_81742B8C 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 David Hildenbrand <david@redhat.com>, linux-mips@vger.kernel.org,
 Ben Gardon <bgardon@google.com>, Claudio Imbrenda <imbrenda@linux.ibm.com>,
 kvmarm@lists.cs.columbia.edu, Joerg Roedel <joro@8bytes.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, Christoffer Dall <christoffer.dall@arm.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename the memory helpers that will soon be moved to common code and be
made globaly available via linux/kvm_host.h.  "mmu" alone is not a
sufficient namespace for globally available KVM symbols.

Opportunistically add "nr_" in mmu_memory_cache_free_objects() to make
it clear the function returns the number of free objects, as opposed to
freeing existing objects.

Suggested-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/mmu/mmu.c | 42 +++++++++++++++++++++---------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index 8d66cf558f1b..b85d3e8e8403 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -1071,7 +1071,7 @@ static inline void *mmu_memory_cache_alloc_obj(struct kvm_mmu_memory_cache *mc,
 		return (void *)__get_free_page(gfp_flags);
 }
 
-static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
+static int kvm_mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
 {
 	void *obj;
 
@@ -1086,12 +1086,12 @@ static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
 	return 0;
 }
 
-static int mmu_memory_cache_free_objects(struct kvm_mmu_memory_cache *mc)
+static int kvm_mmu_memory_cache_nr_free_objects(struct kvm_mmu_memory_cache *mc)
 {
 	return mc->nobjs;
 }
 
-static void mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
+static void kvm_mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
 {
 	while (mc->nobjs) {
 		if (mc->kmem_cache)
@@ -1106,33 +1106,33 @@ static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu, bool maybe_indirect)
 	int r;
 
 	/* 1 rmap, 1 parent PTE per level, and the prefetched rmaps. */
-	r = mmu_topup_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache,
-				   1 + PT64_ROOT_MAX_LEVEL + PTE_PREFETCH_NUM);
+	r = kvm_mmu_topup_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache,
+				       1 + PT64_ROOT_MAX_LEVEL + PTE_PREFETCH_NUM);
 	if (r)
 		return r;
-	r = mmu_topup_memory_cache(&vcpu->arch.mmu_shadow_page_cache,
-				   PT64_ROOT_MAX_LEVEL);
+	r = kvm_mmu_topup_memory_cache(&vcpu->arch.mmu_shadow_page_cache,
+				       PT64_ROOT_MAX_LEVEL);
 	if (r)
 		return r;
 	if (maybe_indirect) {
-		r = mmu_topup_memory_cache(&vcpu->arch.mmu_gfn_array_cache,
-					   PT64_ROOT_MAX_LEVEL);
+		r = kvm_mmu_topup_memory_cache(&vcpu->arch.mmu_gfn_array_cache,
+					       PT64_ROOT_MAX_LEVEL);
 		if (r)
 			return r;
 	}
-	return mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache,
-				      PT64_ROOT_MAX_LEVEL);
+	return kvm_mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache,
+					  PT64_ROOT_MAX_LEVEL);
 }
 
 static void mmu_free_memory_caches(struct kvm_vcpu *vcpu)
 {
-	mmu_free_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache);
-	mmu_free_memory_cache(&vcpu->arch.mmu_shadow_page_cache);
-	mmu_free_memory_cache(&vcpu->arch.mmu_gfn_array_cache);
-	mmu_free_memory_cache(&vcpu->arch.mmu_page_header_cache);
+	kvm_mmu_free_memory_cache(&vcpu->arch.mmu_pte_list_desc_cache);
+	kvm_mmu_free_memory_cache(&vcpu->arch.mmu_shadow_page_cache);
+	kvm_mmu_free_memory_cache(&vcpu->arch.mmu_gfn_array_cache);
+	kvm_mmu_free_memory_cache(&vcpu->arch.mmu_page_header_cache);
 }
 
-static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
+static void *kvm_mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
 {
 	void *p;
 
@@ -1146,7 +1146,7 @@ static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
 
 static struct pte_list_desc *mmu_alloc_pte_list_desc(struct kvm_vcpu *vcpu)
 {
-	return mmu_memory_cache_alloc(&vcpu->arch.mmu_pte_list_desc_cache);
+	return kvm_mmu_memory_cache_alloc(&vcpu->arch.mmu_pte_list_desc_cache);
 }
 
 static void mmu_free_pte_list_desc(struct pte_list_desc *pte_list_desc)
@@ -1417,7 +1417,7 @@ static bool rmap_can_add(struct kvm_vcpu *vcpu)
 	struct kvm_mmu_memory_cache *mc;
 
 	mc = &vcpu->arch.mmu_pte_list_desc_cache;
-	return mmu_memory_cache_free_objects(mc);
+	return kvm_mmu_memory_cache_nr_free_objects(mc);
 }
 
 static int rmap_add(struct kvm_vcpu *vcpu, u64 *spte, gfn_t gfn)
@@ -2104,10 +2104,10 @@ static struct kvm_mmu_page *kvm_mmu_alloc_page(struct kvm_vcpu *vcpu, int direct
 {
 	struct kvm_mmu_page *sp;
 
-	sp = mmu_memory_cache_alloc(&vcpu->arch.mmu_page_header_cache);
-	sp->spt = mmu_memory_cache_alloc(&vcpu->arch.mmu_shadow_page_cache);
+	sp = kvm_mmu_memory_cache_alloc(&vcpu->arch.mmu_page_header_cache);
+	sp->spt = kvm_mmu_memory_cache_alloc(&vcpu->arch.mmu_shadow_page_cache);
 	if (!direct)
-		sp->gfns = mmu_memory_cache_alloc(&vcpu->arch.mmu_gfn_array_cache);
+		sp->gfns = kvm_mmu_memory_cache_alloc(&vcpu->arch.mmu_gfn_array_cache);
 	set_page_private(virt_to_page(sp->spt), (unsigned long)sp);
 
 	/*
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
