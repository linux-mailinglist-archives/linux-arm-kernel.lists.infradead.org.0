Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0017134D84
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:28:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIA+mDTuMOsyN3p0QhShQJUpvoVzrsbPe1LWyf1e4qY=; b=R3MW1IckeguHOx
	xee1Tr7T0cAxec23ar03nerT6dNK7frTQfUqPd3xOBVdXUuydHpVwNkdw+FTHGpArXxRaeE2kSrmN
	nEsGT+0a/+U2nJJLUhlFkeFepP2lhYsoUtYKnr67vIt+duc+A2ughflAYyvhQ6OGB+dCRm6qrOLWP
	wjECjp+uDq1KRcAQlTrxOzhB5o8IygVZQO4cU5Hclc5MGfzJ6cjDbEQPmUQoeRAMi6z+oPk8PMhZd
	xmSSzGTfsBSciQcgy41rBGamEJWID/+AmV+/L2g7gDBdGeBLYIgJBh+hER4w7iR2jYCowxRUIU4JZ
	LuziycBGEiyBbrHQEuFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHwB-0000kK-6d; Wed, 08 Jan 2020 20:28:19 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHv1-0008Bf-3e
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:27:08 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 12:27:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,411,1571727600"; d="scan'208";a="211658362"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2020 12:27:05 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 03/14] KVM: Use vcpu-specific gva->hva translation when
 querying host page size
Date: Wed,  8 Jan 2020 12:24:37 -0800
Message-Id: <20200108202448.9669-4-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108202448.9669-1-sean.j.christopherson@intel.com>
References: <20200108202448.9669-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_122707_156920_C326B32E 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Use kvm_vcpu_gfn_to_hva() when retrieving the host page size so that the
correct set of memslots is used when handling x86 page faults in SMM.

Fixes: 54bf36aac520 ("KVM: x86: use vcpu-specific functions to read/write/translate GFNs")
Cc: stable@vger.kernel.org
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/powerpc/kvm/book3s_xive_native.c | 2 +-
 arch/x86/kvm/mmu/mmu.c                | 6 +++---
 include/linux/kvm_host.h              | 2 +-
 virt/kvm/kvm_main.c                   | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/powerpc/kvm/book3s_xive_native.c b/arch/powerpc/kvm/book3s_xive_native.c
index d83adb1e1490..6ef0151ff70a 100644
--- a/arch/powerpc/kvm/book3s_xive_native.c
+++ b/arch/powerpc/kvm/book3s_xive_native.c
@@ -631,7 +631,7 @@ static int kvmppc_xive_native_set_queue_config(struct kvmppc_xive *xive,
 	srcu_idx = srcu_read_lock(&kvm->srcu);
 	gfn = gpa_to_gfn(kvm_eq.qaddr);
 
-	page_size = kvm_host_page_size(kvm, gfn);
+	page_size = kvm_host_page_size(vcpu, gfn);
 	if (1ull << kvm_eq.qshift > page_size) {
 		srcu_read_unlock(&kvm->srcu, srcu_idx);
 		pr_warn("Incompatible host page size %lx!\n", page_size);
diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index ca14c84c4f4b..8ca6cd04cdf1 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -1286,12 +1286,12 @@ static bool mmu_gfn_lpage_is_disallowed(struct kvm_vcpu *vcpu, gfn_t gfn,
 	return __mmu_gfn_lpage_is_disallowed(gfn, level, slot);
 }
 
-static int host_mapping_level(struct kvm *kvm, gfn_t gfn)
+static int host_mapping_level(struct kvm_vcpu *vcpu, gfn_t gfn)
 {
 	unsigned long page_size;
 	int i, ret = 0;
 
-	page_size = kvm_host_page_size(kvm, gfn);
+	page_size = kvm_host_page_size(vcpu, gfn);
 
 	for (i = PT_PAGE_TABLE_LEVEL; i <= PT_MAX_HUGEPAGE_LEVEL; ++i) {
 		if (page_size >= KVM_HPAGE_SIZE(i))
@@ -1362,7 +1362,7 @@ static int mapping_level(struct kvm_vcpu *vcpu, gfn_t large_gfn,
 	 * So, do not propagate host_mapping_level() to max_level as KVM can
 	 * still promote the guest mapping to a huge page in the THP case.
 	 */
-	host_level = host_mapping_level(vcpu->kvm, large_gfn);
+	host_level = host_mapping_level(vcpu, large_gfn);
 	return min(host_level, max_level);
 }
 
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 411b71a02f25..3c0ceec45ebd 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -767,7 +767,7 @@ int kvm_clear_guest_page(struct kvm *kvm, gfn_t gfn, int offset, int len);
 int kvm_clear_guest(struct kvm *kvm, gpa_t gpa, unsigned long len);
 struct kvm_memory_slot *gfn_to_memslot(struct kvm *kvm, gfn_t gfn);
 bool kvm_is_visible_gfn(struct kvm *kvm, gfn_t gfn);
-unsigned long kvm_host_page_size(struct kvm *kvm, gfn_t gfn);
+unsigned long kvm_host_page_size(struct kvm_vcpu *vcpu, gfn_t gfn);
 void mark_page_dirty(struct kvm *kvm, gfn_t gfn);
 
 struct kvm_memslots *kvm_vcpu_memslots(struct kvm_vcpu *vcpu);
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index e8ca8bf12320..5f7f06824c2b 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -1416,14 +1416,14 @@ bool kvm_is_visible_gfn(struct kvm *kvm, gfn_t gfn)
 }
 EXPORT_SYMBOL_GPL(kvm_is_visible_gfn);
 
-unsigned long kvm_host_page_size(struct kvm *kvm, gfn_t gfn)
+unsigned long kvm_host_page_size(struct kvm_vcpu *vcpu, gfn_t gfn)
 {
 	struct vm_area_struct *vma;
 	unsigned long addr, size;
 
 	size = PAGE_SIZE;
 
-	addr = gfn_to_hva(kvm, gfn);
+	addr = kvm_vcpu_gfn_to_hva(vcpu, gfn);
 	if (kvm_is_error_hva(addr))
 		return PAGE_SIZE;
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
