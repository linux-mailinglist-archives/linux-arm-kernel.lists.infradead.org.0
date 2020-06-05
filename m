Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5B71F0278
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 23:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqOKaWXlKmxi4NRHUMskM6jJ66M6ZM3kfvf25SyNGjI=; b=cg12h/wuGJ5SeI
	vLwVF16ezVCrB6bD0t7y5uWLYiHtnw0vmMhJ39N37BrDEHEBF6ImUWcgLTHrfaLOPfwREJZW3vQZp
	1wRNg7zNp2G/NaO4fOmaqBO6ClnOqjC94P1+wyqUJUPDgtBAY7YB2mmqoDI9FZwHiSUn7cfAk5tcU
	p+j/h9+i3bGXKH6oiHg1GIIehngWP57YMYJiUa5MMSCX632qrEW935QnK8iD7qxVYxUAZrfoZYlaK
	jPdwa7ABGluTHRVJQHzFXU4aI1FVq+VLjLPiZmKyjzwp2+jR54yAb8z466vl1EJPaFggyxJmLHKvF
	4OW3AR8ehw9yQ0GrSUJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhK7p-0000SB-Eh; Fri, 05 Jun 2020 21:43:41 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhK3W-0002ly-Nr
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 21:39:16 +0000
IronPort-SDR: fNkhJk+1/RfvbV5VZIfdOjgPxbIxGbV861nn86Wu23sgx9nPhjCMAwhBujJVWK9WEXSMtkNDhS
 V0xzndL4xBgg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 14:39:09 -0700
IronPort-SDR: PWArTjc0SrJLSJ05VypN8vL975Wv8bdiyKJ53PVlmPdjQXrXRT1XPVBonpfvRNol5tassY2nle
 iHJoSum0887Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,477,1583222400"; d="scan'208";a="287860931"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.152])
 by orsmga002.jf.intel.com with ESMTP; 05 Jun 2020 14:39:09 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 21/21] KVM: MIPS: Use common KVM implementation of MMU memory
 caches
Date: Fri,  5 Jun 2020 14:38:53 -0700
Message-Id: <20200605213853.14959-22-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200605213853.14959-1-sean.j.christopherson@intel.com>
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_143914_935978_BCE22587 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Move to the common MMU memory cache implementation now that the common
code and MIPS's existing code are semantically compatible.

No functional change intended.

Suggested-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/mips/include/asm/kvm_host.h  | 11 ---------
 arch/mips/include/asm/kvm_types.h |  2 ++
 arch/mips/kvm/mmu.c               | 40 ++++---------------------------
 3 files changed, 7 insertions(+), 46 deletions(-)

diff --git a/arch/mips/include/asm/kvm_host.h b/arch/mips/include/asm/kvm_host.h
index 363e7a89d173..f49617175f60 100644
--- a/arch/mips/include/asm/kvm_host.h
+++ b/arch/mips/include/asm/kvm_host.h
@@ -335,17 +335,6 @@ struct kvm_mips_tlb {
 	long tlb_lo[2];
 };
 
-#define KVM_NR_MEM_OBJS     4
-
-/*
- * We don't want allocation failures within the mmu code, so we preallocate
- * enough memory for a single page fault in a cache.
- */
-struct kvm_mmu_memory_cache {
-	int nobjs;
-	void *objects[KVM_NR_MEM_OBJS];
-};
-
 #define KVM_MIPS_AUX_FPU	0x1
 #define KVM_MIPS_AUX_MSA	0x2
 
diff --git a/arch/mips/include/asm/kvm_types.h b/arch/mips/include/asm/kvm_types.h
index 5efeb32a5926..213754d9ef6b 100644
--- a/arch/mips/include/asm/kvm_types.h
+++ b/arch/mips/include/asm/kvm_types.h
@@ -2,4 +2,6 @@
 #ifndef _ASM_MIPS_KVM_TYPES_H
 #define _ASM_MIPS_KVM_TYPES_H
 
+#define KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE     4
+
 #endif /* _ASM_MIPS_KVM_TYPES_H */
diff --git a/arch/mips/kvm/mmu.c b/arch/mips/kvm/mmu.c
index 41a4a063a730..d6acd88c0c46 100644
--- a/arch/mips/kvm/mmu.c
+++ b/arch/mips/kvm/mmu.c
@@ -25,39 +25,9 @@
 #define KVM_MMU_CACHE_MIN_PAGES 2
 #endif
 
-static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache, int min)
-{
-	void *page;
-
-	if (cache->nobjs >= min)
-		return 0;
-	while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
-		page = (void *)__get_free_page(GFP_KERNEL_ACCOUNT);
-		if (!page)
-			return -ENOMEM;
-		cache->objects[cache->nobjs++] = page;
-	}
-	return 0;
-}
-
-static void mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
-{
-	while (mc->nobjs)
-		free_page((unsigned long)mc->objects[--mc->nobjs]);
-}
-
-static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
-{
-	void *p;
-
-	BUG_ON(!mc || !mc->nobjs);
-	p = mc->objects[--mc->nobjs];
-	return p;
-}
-
 void kvm_mmu_free_memory_caches(struct kvm_vcpu *vcpu)
 {
-	mmu_free_memory_cache(&vcpu->arch.mmu_page_cache);
+	kvm_mmu_free_memory_cache(&vcpu->arch.mmu_page_cache);
 }
 
 /**
@@ -151,7 +121,7 @@ static pte_t *kvm_mips_walk_pgd(pgd_t *pgd, struct kvm_mmu_memory_cache *cache,
 
 		if (!cache)
 			return NULL;
-		new_pmd = mmu_memory_cache_alloc(cache);
+		new_pmd = kvm_mmu_memory_cache_alloc(cache);
 		pmd_init((unsigned long)new_pmd,
 			 (unsigned long)invalid_pte_table);
 		pud_populate(NULL, pud, new_pmd);
@@ -162,7 +132,7 @@ static pte_t *kvm_mips_walk_pgd(pgd_t *pgd, struct kvm_mmu_memory_cache *cache,
 
 		if (!cache)
 			return NULL;
-		new_pte = mmu_memory_cache_alloc(cache);
+		new_pte = kvm_mmu_memory_cache_alloc(cache);
 		clear_page(new_pte);
 		pmd_populate_kernel(NULL, pmd, new_pte);
 	}
@@ -709,7 +679,7 @@ static int kvm_mips_map_page(struct kvm_vcpu *vcpu, unsigned long gpa,
 		goto out;
 
 	/* We need a minimum of cached pages ready for page table creation */
-	err = mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES);
+	err = kvm_mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES);
 	if (err)
 		goto out;
 
@@ -793,7 +763,7 @@ static pte_t *kvm_trap_emul_pte_for_gva(struct kvm_vcpu *vcpu,
 	int ret;
 
 	/* We need a minimum of cached pages ready for page table creation */
-	ret = mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES);
+	ret = kvm_mmu_topup_memory_cache(memcache, KVM_MMU_CACHE_MIN_PAGES);
 	if (ret)
 		return NULL;
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
