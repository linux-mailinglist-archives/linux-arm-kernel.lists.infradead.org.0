Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCAD1F0294
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 23:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b1WlVaxUwEI15KXooOlrqb+HDoA3Nwa1aUYJCkf+rVA=; b=fa0Ai4TYOROs/y
	UttQiysvm+Nut+wD5Rh0Hj3hbOskebcLMx0Y0FMZKzndNxTzYFo4DsUuFdweY6EjwKoxkuaadE63J
	HKiRCyU30kvFZnZNcydlI+PDf56CygBCaBTVJcwoPBR1gH4HS+B+bIH6zY3w17t1rU9MQ43CnIZx/
	lAxjPg3qbiJjBYVWwwI9FILnuyuaRvdGgSvZDA9U4ixHngXekyNKhqVsF2qKFUKwFNAJWZkDk8QNC
	TnHeSylx0KF7j0JNs1cXGLbEEqYWALNtAgp/5ZNT4jfRcSQwcBrsrqAasa7rr2yQOBGiL/zsXLgdD
	IPpFrUOJFB1GnZbUu+/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhK92-0001Z2-GI; Fri, 05 Jun 2020 21:44:56 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhK3Z-0002lv-6E
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 21:39:18 +0000
IronPort-SDR: SbGln/h2MM75UxgIa20zJ0vDRs7x1ZUJbPLty7VLhpnU1md7rgmFRdqCEomjyn30bR+0Rx/b+t
 xiX005L6FVXQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 14:39:08 -0700
IronPort-SDR: j7Wc2uJYO1nS60vi1HPczs7gXFA7HoPA+i9Y3yXEGgSIHvuwj1L1as4jdw7VkhXY0JW6DL68E1
 GDo+WnXbv7cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,477,1583222400"; d="scan'208";a="287860901"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.152])
 by orsmga002.jf.intel.com with ESMTP; 05 Jun 2020 14:39:08 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Marc Zyngier <maz@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 12/21] KVM: x86/mmu: Skip filling the gfn cache for guaranteed
 direct MMU topups
Date: Fri,  5 Jun 2020 14:38:44 -0700
Message-Id: <20200605213853.14959-13-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200605213853.14959-1-sean.j.christopherson@intel.com>
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_143917_268129_8ADE23EC 
X-CRM114-Status: GOOD (  13.41  )
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

Don't bother filling the gfn array cache when the caller is a fully
direct MMU, i.e. won't need a gfn array for shadow pages.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/mmu/mmu.c         | 18 ++++++++++--------
 arch/x86/kvm/mmu/paging_tmpl.h |  4 ++--
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index a8f8eebf67df..8d66cf558f1b 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -1101,7 +1101,7 @@ static void mmu_free_memory_cache(struct kvm_mmu_memory_cache *mc)
 	}
 }
 
-static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu)
+static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu, bool maybe_indirect)
 {
 	int r;
 
@@ -1114,10 +1114,12 @@ static int mmu_topup_memory_caches(struct kvm_vcpu *vcpu)
 				   PT64_ROOT_MAX_LEVEL);
 	if (r)
 		return r;
-	r = mmu_topup_memory_cache(&vcpu->arch.mmu_gfn_array_cache,
-				   PT64_ROOT_MAX_LEVEL);
-	if (r)
-		return r;
+	if (maybe_indirect) {
+		r = mmu_topup_memory_cache(&vcpu->arch.mmu_gfn_array_cache,
+					   PT64_ROOT_MAX_LEVEL);
+		if (r)
+			return r;
+	}
 	return mmu_topup_memory_cache(&vcpu->arch.mmu_page_header_cache,
 				      PT64_ROOT_MAX_LEVEL);
 }
@@ -4107,7 +4109,7 @@ static int direct_page_fault(struct kvm_vcpu *vcpu, gpa_t gpa, u32 error_code,
 	if (fast_page_fault(vcpu, gpa, error_code))
 		return RET_PF_RETRY;
 
-	r = mmu_topup_memory_caches(vcpu);
+	r = mmu_topup_memory_caches(vcpu, false);
 	if (r)
 		return r;
 
@@ -5147,7 +5149,7 @@ int kvm_mmu_load(struct kvm_vcpu *vcpu)
 {
 	int r;
 
-	r = mmu_topup_memory_caches(vcpu);
+	r = mmu_topup_memory_caches(vcpu, !vcpu->arch.mmu->direct_map);
 	if (r)
 		goto out;
 	r = mmu_alloc_roots(vcpu);
@@ -5341,7 +5343,7 @@ static void kvm_mmu_pte_write(struct kvm_vcpu *vcpu, gpa_t gpa,
 	 * or not since pte prefetch is skiped if it does not have
 	 * enough objects in the cache.
 	 */
-	mmu_topup_memory_caches(vcpu);
+	mmu_topup_memory_caches(vcpu, true);
 
 	spin_lock(&vcpu->kvm->mmu_lock);
 
diff --git a/arch/x86/kvm/mmu/paging_tmpl.h b/arch/x86/kvm/mmu/paging_tmpl.h
index 3de32122f601..ac39710d0594 100644
--- a/arch/x86/kvm/mmu/paging_tmpl.h
+++ b/arch/x86/kvm/mmu/paging_tmpl.h
@@ -818,7 +818,7 @@ static int FNAME(page_fault)(struct kvm_vcpu *vcpu, gpa_t addr, u32 error_code,
 		return RET_PF_EMULATE;
 	}
 
-	r = mmu_topup_memory_caches(vcpu);
+	r = mmu_topup_memory_caches(vcpu, true);
 	if (r)
 		return r;
 
@@ -905,7 +905,7 @@ static void FNAME(invlpg)(struct kvm_vcpu *vcpu, gva_t gva, hpa_t root_hpa)
 	 * No need to check return value here, rmap_can_add() can
 	 * help us to skip pte prefetch later.
 	 */
-	mmu_topup_memory_caches(vcpu);
+	mmu_topup_memory_caches(vcpu, true);
 
 	if (!VALID_PAGE(root_hpa)) {
 		WARN_ON(1);
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
