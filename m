Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178C11237F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 21:44:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MN5xMu7qjYz/05e93FZX1pHUqG7twEfa6LCSqTzHFWc=; b=Ffa5ddCb3huAXE
	kLeGX2U2ZVTjzXLncyO69q5GIQQd9AjAZoCotaA2nGI5emuQl49mJ+G4LEDuuUS0XrTmGr/NF30tE
	2Q57r1Oqe5/fOUavEXHQ8u61PzMGWnzllMhU0IiKPHJ4T5TGnmxPxJi1upEL8j+5BocSnMYI26nlo
	xenyNtba04R5gqfNFbhMQ4bXfeULhml3S+6zYLxoj7ggAd0iYobCrHFG7Bv0P1wCa8S8Cvk3jUuCP
	Ee7lqP74zFoqVoNCvYFkmHPXavRG8VeQ8T6QFwlATZZsufV07pH91OQGhlaNxQtw32Re+wcZExEJV
	wSzQb0Xky3D/pYpYiQnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihJhT-0007RH-2f; Tue, 17 Dec 2019 20:44:11 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihJeA-0004ok-Ui
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 20:40:51 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 12:40:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="389952615"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga005.jf.intel.com with ESMTP; 17 Dec 2019 12:40:43 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v4 14/19] KVM: Clean up local variable usage in
 __kvm_set_memory_region()
Date: Tue, 17 Dec 2019 12:40:36 -0800
Message-Id: <20191217204041.10815-15-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217204041.10815-1-sean.j.christopherson@intel.com>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_124047_023519_F16EAF32 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.55.52.93 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>,
 =?UTF-8?q?Philippe=20Mathieu-Daud=C3=A9?= <f4bug@amsat.org>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Joerg Roedel <joro@8bytes.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 kvm-ppc@vger.kernel.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
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
index 2fa40c3e7961..b3e732078ab2 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -1074,13 +1074,11 @@ static int kvm_delete_memslot(struct kvm *kvm,
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
@@ -1105,52 +1103,55 @@ int __kvm_set_memory_region(struct kvm *kvm,
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
