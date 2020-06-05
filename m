Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0F11F0293
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 23:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSMFGjWXXHOph+RjjvpvnhkCGevfa58fVfPffeAZaVI=; b=WkO6SoFBIyQJL9
	2nMNDBt54Gqye+lJsdC6ioPks0m+urG/Jh3jkMHd0uGFH+aWv3llpdewM9NWjg4r6KEbxyT1hcPVY
	e5gssBSPVqwzA16qsmEP5q47Z51PfGhqXbX70C1E/g8lWKAK8mU0TnTkafSMACufbt9jQVYpl2/Xp
	zr67ZhAxPpJwhqu5YipRzq+65PEt9GePRz5vODobkLxwOmuV6lTuPK6czOI54X1xg6y/3Cb3hwPQU
	n65dJ2hgdKR7y0A9xbvgMV8cKN2KyF4jD15IsbeqgJTtSy8JNvUHYwHBHstd8TfxctUged6FIU+/7
	m2ABD43QcYsFkAubPF7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhK8g-0001Gp-Pv; Fri, 05 Jun 2020 21:44:34 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhK3a-0002lz-JD
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 21:39:20 +0000
IronPort-SDR: v99fNHySz1nAx05hnEOSU8nKIBCSU25T9Q3zfJa/Hg+tTj5ls5kBeuwb0N2dOk8kjjtNCKUsSR
 BGM2p+cO7Grw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 14:39:08 -0700
IronPort-SDR: H8FtkyTkq+kfR3GM/MSnkl6Fv5ZNCYmvyGw5Iw2YQz/49QgCjYUqVBtIE3U1lDEulgImpTXOAe
 egrvLr8RD3rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,477,1583222400"; d="scan'208";a="287860911"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.152])
 by orsmga002.jf.intel.com with ESMTP; 05 Jun 2020 14:39:08 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 15/21] KVM: Move x86's MMU memory cache helpers to common KVM
 code
Date: Fri,  5 Jun 2020 14:38:47 -0700
Message-Id: <20200605213853.14959-16-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200605213853.14959-1-sean.j.christopherson@intel.com>
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_143918_703162_89CFBAB7 
X-CRM114-Status: GOOD (  11.78  )
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

Move x86's memory cache helpers to common KVM code so that they can be
reused by arm64 and MIPS in future patches.

Suggested-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/mmu/mmu.c   | 53 --------------------------------------
 include/linux/kvm_host.h |  7 +++++
 virt/kvm/kvm_main.c      | 55 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 62 insertions(+), 53 deletions(-)

diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index b85d3e8e8403..a627437f73fd 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -1060,47 +1060,6 @@ static void walk_shadow_page_lockless_end(struct kvm_vcpu *vcpu)
 	local_irq_enable();
 }
 
-static inline void *mmu_memory_cache_alloc_obj(struct kvm_mmu_memory_cache *mc,
-					       gfp_t gfp_flags)
-{
-	gfp_flags |= mc->gfp_zero;
-
-	if (mc->kmem_cache)
-		return kmem_cache_alloc(mc->kmem_cache, gfp_flags);
-	else
-		return (void *)__get_free_page(gfp_flags);
-}
-
-static int kvm_mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
-{
-	void *obj;
-
-	if (mc->nobjs >= min)
-		return 0;
-	while (mc->nobjs < ARRAY_SIZE(mc->objects)) {
-		obj = mmu_memory_cache_alloc_obj(mc, GFP_KERNEL_ACCOUNT);
-		if (!obj)
-			return mc->nobjs >= min ? 0 : -ENOMEM;
-		mc->objects[mc->nobjs++] = obj;
-	}
-	return 0;
-}
-
-static int kvm_mmu_memory_cache_nr_free_objects(struct kvm_mmu_memory_cache *mc)
-{
-	return mc->nobjs;
-}
-
-static void kvm_mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
-{
-	while (mc->nobjs) {
-		if (mc->kmem_cache)
-			kmem_cache_free(mc->kmem_cache, mc->objects[--mc->nobjs]);
-		else
-			free_page((unsigned long)mc->objects[--mc->nobjs]);
-	}
-}
-
 static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu, bool maybe_indirect)
 {
 	int r;
@@ -1132,18 +1091,6 @@ static void mmu_free_memory_caches(struct kvm_vcpu *vcpu)
 	kvm_mmu_free_memory_cache(&vcpu->arch.mmu_page_header_cache);
 }
 
-static void *kvm_mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
-{
-	void *p;
-
-	if (WARN_ON(!mc->nobjs))
-		p = mmu_memory_cache_alloc_obj(mc, GFP_ATOMIC | __GFP_ACCOUNT);
-	else
-		p = mc->objects[--mc->nobjs];
-	BUG_ON(!p);
-	return p;
-}
-
 static struct pte_list_desc *mmu_alloc_pte_list_desc(struct kvm_vcpu *vcpu)
 {
 	return kvm_mmu_memory_cache_alloc(&vcpu->arch.mmu_pte_list_desc_cache);
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index d38d6b9c24be..802b9e2306f0 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -815,6 +815,13 @@ void kvm_vcpu_on_spin(struct kvm_vcpu *vcpu, bool usermode_vcpu_not_eligible);
 void kvm_flush_remote_tlbs(struct kvm *kvm);
 void kvm_reload_remote_mmus(struct kvm *kvm);
 
+#ifdef KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE
+int kvm_mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min);
+int kvm_mmu_memory_cache_nr_free_objects(struct kvm_mmu_memory_cache *mc);
+void kvm_mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc);
+void *kvm_mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc);
+#endif
+
 bool kvm_make_vcpus_request_mask(struct kvm *kvm, unsigned int req,
 				 struct kvm_vcpu *except,
 				 unsigned long *vcpu_bitmap, cpumask_var_t tmp);
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 4db151f6101e..fead5f1d5594 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -342,6 +342,61 @@ void kvm_reload_remote_mmus(struct kvm *kvm)
 	kvm_make_all_cpus_request(kvm, KVM_REQ_MMU_RELOAD);
 }
 
+#ifdef KVM_ARCH_NR_OBJS_PER_MEMORY_CACHE
+static inline void *mmu_memory_cache_alloc_obj(struct kvm_mmu_memory_cache *mc,
+					       gfp_t gfp_flags)
+{
+	gfp_flags |= mc->gfp_zero;
+
+	if (mc->kmem_cache)
+		return kmem_cache_alloc(mc->kmem_cache, gfp_flags);
+	else
+		return (void *)__get_free_page(gfp_flags);
+}
+
+int kvm_mmu_topup_memory_cache(struct kvm_mmu_memory_cache *mc, int min)
+{
+	void *obj;
+
+	if (mc->nobjs >= min)
+		return 0;
+	while (mc->nobjs < ARRAY_SIZE(mc->objects)) {
+		obj = mmu_memory_cache_alloc_obj(mc, GFP_KERNEL_ACCOUNT);
+		if (!obj)
+			return mc->nobjs >= min ? 0 : -ENOMEM;
+		mc->objects[mc->nobjs++] = obj;
+	}
+	return 0;
+}
+
+int kvm_mmu_memory_cache_nr_free_objects(struct kvm_mmu_memory_cache *mc)
+{
+	return mc->nobjs;
+}
+
+void kvm_mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
+{
+	while (mc->nobjs) {
+		if (mc->kmem_cache)
+			kmem_cache_free(mc->kmem_cache, mc->objects[--mc->nobjs]);
+		else
+			free_page((unsigned long)mc->objects[--mc->nobjs]);
+	}
+}
+
+void *kvm_mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
+{
+	void *p;
+
+	if (WARN_ON(!mc->nobjs))
+		p = mmu_memory_cache_alloc_obj(mc, GFP_ATOMIC | __GFP_ACCOUNT);
+	else
+		p = mc->objects[--mc->nobjs];
+	BUG_ON(!p);
+	return p;
+}
+#endif
+
 static void kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
 {
 	mutex_init(&vcpu->mutex);
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
