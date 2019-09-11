Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3FBB042A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 20:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pdq8+1H+812l46iJ/UgvssoPUe0N10xV46bmsGm9YwQ=; b=dqbyhqx75RaDFB
	nh+a7CDoS6kBabX3iI+uk+KViiF3pNFmn5GHyrLPqRkT5yC7nRN+kPYKDY0tERhlrecZl312h465g
	IVQ/ptZI5EuGADqRqnCwRHMYg3PunyvXLpQbHUwKwrkcFlgzv3a6NrKgE84H9IlyOsQbVlaZGK7YT
	whVegaWEhf8gN5m8B6m5MPhPau/+8PLEYMSDalHH/DKjN+G8/5h2zEbAb9xhkV1q4apGxpMxSTXu7
	NFqy6Mk1jtVU12THv7Iy1074N+gkR+SDG+jtknQx4TU2vjI4uw1DDU6SidIUa45nB3cEgKcJXWid/
	5gnQn/dG4DusNZs71TGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87jN-000055-Ux; Wed, 11 Sep 2019 18:52:42 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87hU-0007Ew-Md
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 18:50:47 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 11:50:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="196980880"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by orsmga002.jf.intel.com with ESMTP; 11 Sep 2019 11:50:40 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 06/13] KVM: Move setting of memslot into helper routine
Date: Wed, 11 Sep 2019 11:50:31 -0700
Message-Id: <20190911185038.24341-7-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190911185038.24341-1-sean.j.christopherson@intel.com>
References: <20190911185038.24341-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_115044_774169_63E82275 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Julien Thierry <julien.thierry@arm.com>, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 kvm-ppc@vger.kernel.org, Vitaly Kuznetsov <vkuznets@redhat.com>,
 kvmarm@lists.cs.columbia.edu, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Split out the core functionality of setting a memslot into a separate
helper in preparation for moving memslot deletion into its own routine.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 virt/kvm/kvm_main.c | 106 ++++++++++++++++++++++++++------------------
 1 file changed, 63 insertions(+), 43 deletions(-)

diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 8306ce3345a6..693f3d20e710 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -907,6 +907,66 @@ static struct kvm_memslots *install_new_memslots(struct kvm *kvm,
 	return old_memslots;
 }
 
+static int kvm_set_memslot(struct kvm *kvm,
+			   const struct kvm_userspace_memory_region *mem,
+			   const struct kvm_memory_slot *old,
+			   struct kvm_memory_slot *new, int as_id,
+			   enum kvm_mr_change change)
+{
+	struct kvm_memory_slot *slot;
+	struct kvm_memslots *slots;
+	int r;
+
+	slots = kvzalloc(sizeof(struct kvm_memslots), GFP_KERNEL_ACCOUNT);
+	if (!slots)
+		return -ENOMEM;
+	memcpy(slots, __kvm_memslots(kvm, as_id), sizeof(struct kvm_memslots));
+
+	if (change == KVM_MR_DELETE || change == KVM_MR_MOVE) {
+		/*
+		 * Note, the INVALID flag needs to be in the appropriate entry
+		 * in the freshly allocated memslots, not in @old or @new.
+		 */
+		slot = id_to_memslot(slots, old->id);
+		slot->flags |= KVM_MEMSLOT_INVALID;
+
+		/*
+		 * We can re-use the old memslots, the only difference from the
+		 * newly installed memslots is the invalid flag, which will get
+		 * dropped by update_memslots anyway.  We'll also revert to the
+		 * old memslots if preparing the new memory region fails.
+		 */
+		slots = install_new_memslots(kvm, as_id, slots);
+
+		/* From this point no new shadow pages pointing to a deleted,
+		 * or moved, memslot will be created.
+		 *
+		 * validation of sp->gfn happens in:
+		 *	- gfn_to_hva (kvm_read_guest, gfn_to_pfn)
+		 *	- kvm_is_visible_gfn (mmu_check_roots)
+		 */
+		kvm_arch_flush_shadow_memslot(kvm, slot);
+	}
+
+	r = kvm_arch_prepare_memory_region(kvm, new, mem, change);
+	if (r)
+		goto out_slots;
+
+	update_memslots(slots, new, change);
+	slots = install_new_memslots(kvm, as_id, slots);
+
+	kvm_arch_commit_memory_region(kvm, mem, old, new, change);
+
+	kvfree(slots);
+	return 0;
+
+out_slots:
+	if (change == KVM_MR_DELETE || change == KVM_MR_MOVE)
+		slots = install_new_memslots(kvm, as_id, slots);
+	kvfree(slots);
+	return r;
+}
+
 /*
  * Allocate some memory and give it an address in the guest physical address
  * space.
@@ -923,7 +983,6 @@ int __kvm_set_memory_region(struct kvm *kvm,
 	unsigned long npages;
 	struct kvm_memory_slot *slot;
 	struct kvm_memory_slot old, new;
-	struct kvm_memslots *slots;
 	int as_id, id;
 	enum kvm_mr_change change;
 
@@ -1010,58 +1069,19 @@ int __kvm_set_memory_region(struct kvm *kvm,
 			return r;
 	}
 
-	slots = kvzalloc(sizeof(struct kvm_memslots), GFP_KERNEL_ACCOUNT);
-	if (!slots) {
-		r = -ENOMEM;
-		goto out_bitmap;
-	}
-	memcpy(slots, __kvm_memslots(kvm, as_id), sizeof(struct kvm_memslots));
-
-	if ((change == KVM_MR_DELETE) || (change == KVM_MR_MOVE)) {
-		slot = id_to_memslot(slots, id);
-		slot->flags |= KVM_MEMSLOT_INVALID;
-
-		/*
-		 * We can re-use the old memslots, the only difference from the
-		 * newly installed memslots is the invalid flag, which will get
-		 * dropped by update_memslots anyway.  We'll also revert to the
-		 * old memslots if preparing the new memory region fails.
-		 */
-		slots = install_new_memslots(kvm, as_id, slots);
-
-		/* From this point no new shadow pages pointing to a deleted,
-		 * or moved, memslot will be created.
-		 *
-		 * validation of sp->gfn happens in:
-		 *	- gfn_to_hva (kvm_read_guest, gfn_to_pfn)
-		 *	- kvm_is_visible_gfn (mmu_check_roots)
-		 */
-		kvm_arch_flush_shadow_memslot(kvm, slot);
-	}
-
-	r = kvm_arch_prepare_memory_region(kvm, &new, mem, change);
-	if (r)
-		goto out_slots;
-
 	/* actual memory is freed via old in kvm_free_memslot below */
 	if (change == KVM_MR_DELETE) {
 		new.dirty_bitmap = NULL;
 		memset(&new.arch, 0, sizeof(new.arch));
 	}
 
-	update_memslots(slots, &new, change);
-	slots = install_new_memslots(kvm, as_id, slots);
-
-	kvm_arch_commit_memory_region(kvm, mem, &old, &new, change);
+	r = kvm_set_memslot(kvm, mem, &old, &new, as_id, change);
+	if (r)
+		goto out_bitmap;
 
 	kvm_free_memslot(kvm, &old, &new);
-	kvfree(slots);
 	return 0;
 
-out_slots:
-	if (change == KVM_MR_DELETE || change == KVM_MR_MOVE)
-		slots = install_new_memslots(kvm, as_id, slots);
-	kvfree(slots);
 out_bitmap:
 	if (new.dirty_bitmap && !old.dirty_bitmap)
 		kvm_destroy_dirty_bitmap(&new);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
