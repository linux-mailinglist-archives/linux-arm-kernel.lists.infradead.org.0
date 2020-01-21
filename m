Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85731447C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPqgsVck6AbWz2qAFwva3bzRS9MTilz+Umq4Fch3Wrs=; b=DDfAJuMIAzqSLd
	g7lBthY+XaDA/br+Nek4QBNKDvQ2uwDFu3FDkzctgIhx4E9bXIU7Y8FXcUkt80tKqqrmvO4HH4w3n
	paLp0XAkYuMt0JwbbMPyg+lPzWj00P4a/K9mE4/Km/B7mzPd8U8NRZWH8VaPIdQVX7m+ffmZa+oTN
	VX6R2bFR0ewrZH2UBcWvvceLu6j1jdMH2hntkZaUg3GwdChB+BzO98R2TT1MqI3hcbVeBrh5CT2yq
	z13Ldck+XuCMykNLj52oTAtKrYXXDytWnBbSGfIVViXUtEcBfd7KK6oCUluAhtLYQiwh3e1QfjnTt
	Ho78OUj5pDWm4dW+8Iqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu27v-0006hh-0o; Tue, 21 Jan 2020 22:36:03 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu24D-0002IC-Fe
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:32:15 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 14:32:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="244845159"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 21 Jan 2020 14:32:03 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v5 14/19] KVM: Clean up local variable usage in
 __kvm_set_memory_region()
Date: Tue, 21 Jan 2020 14:31:52 -0800
Message-Id: <20200121223157.15263-15-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200121223157.15263-1-sean.j.christopherson@intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_143213_602705_E0795D30 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
 David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 =?UTF-8?q?Philippe=20Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clean up __kvm_set_memory_region() to achieve several goals:

  - Remove local variables that serve no real purpose
  - Improve the readability of the code
  - Better show the relationship between the 'old' and 'new' memslot
  - Prepare for dynamically sizing memslots.

Note, using 'tmp' to hold the initial memslot is not strictly necessary
at this juncture, e.g. 'old' could be directly copied from
id_to_memslot(), but keep the pointer usage as id_to_memslot() will be
able to return a NULL pointer once memslots are dynamically sized.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 virt/kvm/kvm_main.c | 47 +++++++++++++++++++++++----------------------
 1 file changed, 24 insertions(+), 23 deletions(-)

diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 3278ddf5a56a..6210738cf2f6 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -1070,13 +1070,11 @@ static int kvm_delete_memslot(struct kvm *kvm,
 int __kvm_set_memory_region(struct kvm *kvm,
 			    const struct kvm_userspace_memory_region *mem)
 {
-	int r;
-	gfn_t base_gfn;
-	unsigned long npages;
-	struct kvm_memory_slot *slot;
 	struct kvm_memory_slot old, new;
-	int as_id, id;
+	struct kvm_memory_slot *tmp;
 	enum kvm_mr_change change;
+	int as_id, id;
+	int r;
 
 	r = check_memory_region_flags(mem);
 	if (r)
@@ -1101,52 +1099,55 @@ int __kvm_set_memory_region(struct kvm *kvm,
 	if (mem->guest_phys_addr + mem->memory_size < mem->guest_phys_addr)
 		return -EINVAL;
 
-	slot = id_to_memslot(__kvm_memslots(kvm, as_id), id);
-	base_gfn = mem->guest_phys_addr >> PAGE_SHIFT;
-	npages = mem->memory_size >> PAGE_SHIFT;
-
-	if (npages > KVM_MEM_MAX_NR_PAGES)
-		return -EINVAL;
-
 	/*
 	 * Make a full copy of the old memslot, the pointer will become stale
 	 * when the memslots are re-sorted by update_memslots().
 	 */
-	old = *slot;
+	tmp = id_to_memslot(__kvm_memslots(kvm, as_id), id);
+	old = *tmp;
+	tmp = NULL;
+
 	if (!mem->memory_size)
 		return kvm_delete_memslot(kvm, mem, &old, as_id);
 
-	new = old;
-
 	new.id = id;
-	new.base_gfn = base_gfn;
-	new.npages = npages;
+	new.base_gfn = mem->guest_phys_addr >> PAGE_SHIFT;
+	new.npages = mem->memory_size >> PAGE_SHIFT;
 	new.flags = mem->flags;
 	new.userspace_addr = mem->userspace_addr;
 
+	if (new.npages > KVM_MEM_MAX_NR_PAGES)
+		return -EINVAL;
+
 	if (!old.npages) {
 		change = KVM_MR_CREATE;
+		new.dirty_bitmap = NULL;
+		memset(&new.arch, 0, sizeof(new.arch));
 	} else { /* Modify an existing slot. */
 		if ((new.userspace_addr != old.userspace_addr) ||
-		    (npages != old.npages) ||
+		    (new.npages != old.npages) ||
 		    ((new.flags ^ old.flags) & KVM_MEM_READONLY))
 			return -EINVAL;
 
-		if (base_gfn != old.base_gfn)
+		if (new.base_gfn != old.base_gfn)
 			change = KVM_MR_MOVE;
 		else if (new.flags != old.flags)
 			change = KVM_MR_FLAGS_ONLY;
 		else /* Nothing to change. */
 			return 0;
+
+		/* Copy dirty_bitmap and arch from the current memslot. */
+		new.dirty_bitmap = old.dirty_bitmap;
+		memcpy(&new.arch, &old.arch, sizeof(new.arch));
 	}
 
 	if ((change == KVM_MR_CREATE) || (change == KVM_MR_MOVE)) {
 		/* Check for overlaps */
-		kvm_for_each_memslot(slot, __kvm_memslots(kvm, as_id)) {
-			if (slot->id == id)
+		kvm_for_each_memslot(tmp, __kvm_memslots(kvm, as_id)) {
+			if (tmp->id == id)
 				continue;
-			if (!((base_gfn + npages <= slot->base_gfn) ||
-			      (base_gfn >= slot->base_gfn + slot->npages)))
+			if (!((new.base_gfn + new.npages <= tmp->base_gfn) ||
+			      (new.base_gfn >= tmp->base_gfn + tmp->npages)))
 				return -EEXIST;
 		}
 	}
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
