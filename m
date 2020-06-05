Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF9D1F0295
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 23:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1PL+fFbMhEaqCpcDPyalsCMsjlyKqwzTcS+mFD5exc=; b=kfrxf7uMoC95Aq
	yXvU1CklHzLjJ+PWlmbH/idyg5wyGdFgjavEhG+aQHGPaAfT+9fGvM3IbWr+++P2i0dzRbDjUupd/
	B6fxSkP4mfys0qvaePlTK51OthlqL6LxDlNJFLkEkh6Nn3bqcv4hOp/gnMHyYj2o3yATYfkQCSOzK
	Usvy+AKUN6JWWM23gqh+qnutOyrdXMGxYpWX9YagBLd+8+IA2Vx/ws49kV6oLErZeUgbf5Pi8V964
	KSc1I6xrdtiS9tnykMh0YtUmMi4HkZxqytgaL7LM7Ce87aihC92cqI7y+ceZ2NSyECnbKIbvodog7
	Bin/SQMWTA10Ng0UP1RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhK9U-0001p9-FG; Fri, 05 Jun 2020 21:45:24 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhK3a-0002lv-UL
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 21:39:20 +0000
IronPort-SDR: EHVf8MfhT1FW7+zTXW8Fbp1vyGPMxCM9xxZ1WF8I60915FOGeY+Bcfn6ctSA+omf68VAfFHeYP
 CkEJZpDxx5TQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 14:39:09 -0700
IronPort-SDR: drkA71YNAIoK52TQI0JTaHbh7xNi+AMngxAAIFufzVrtFGyLsEpQm9nwP0i0YUnJE70U07WeKt
 3iT2kn7Z9Pjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,477,1583222400"; d="scan'208";a="287860914"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.152])
 by orsmga002.jf.intel.com with ESMTP; 05 Jun 2020 14:39:08 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 16/21] KVM: arm64: Drop @max param from
 mmu_topup_memory_cache()
Date: Fri,  5 Jun 2020 14:38:48 -0700
Message-Id: <20200605213853.14959-17-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200605213853.14959-1-sean.j.christopherson@intel.com>
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_143919_010362_8DD9508C 
X-CRM114-Status: GOOD (  11.11  )
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

Replace the @max param in mmu_topup_memory_cache() and instead use
ARRAY_SIZE() to terminate the loop to fill the cache.  This removes a
BUG_ON() and sets the stage for moving arm64 to the common memory cache
implementation.

No functional change intended.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/arm64/kvm/mmu.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
index a1f6bc70c4e4..9398b66f8a87 100644
--- a/arch/arm64/kvm/mmu.c
+++ b/arch/arm64/kvm/mmu.c
@@ -124,15 +124,13 @@ static void stage2_dissolve_pud(struct kvm *kvm, phys_addr_t addr, pud_t *pudp)
 	put_page(virt_to_page(pudp));
 }
 
-static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache,
-				  int min, int max)
+static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache, int min)
 {
 	void *page;
 
-	BUG_ON(max > KVM_NR_MEM_OBJS);
 	if (cache->nobjs >= min)
 		return 0;
-	while (cache->nobjs < max) {
+	while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
 		page = (void *)__get_free_page(GFP_PGTABLE_USER);
 		if (!page)
 			return -ENOMEM;
@@ -1356,8 +1354,7 @@ int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
 			pte = kvm_s2pte_mkwrite(pte);
 
 		ret = mmu_topup_memory_cache(&cache,
-					     kvm_mmu_cache_min_pages(kvm),
-					     KVM_NR_MEM_OBJS);
+					     kvm_mmu_cache_min_pages(kvm));
 		if (ret)
 			goto out;
 		spin_lock(&kvm->mmu_lock);
@@ -1737,8 +1734,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 	up_read(&current->mm->mmap_sem);
 
 	/* We need minimum second+third level pages */
-	ret = mmu_topup_memory_cache(memcache, kvm_mmu_cache_min_pages(kvm),
-				     KVM_NR_MEM_OBJS);
+	ret = mmu_topup_memory_cache(memcache, kvm_mmu_cache_min_pages(kvm));
 	if (ret)
 		return ret;
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
