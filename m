Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759AA123801
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 21:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2nZOTfEj1lTTznc2nvZE9gDh2jbO08ghrqODAi1hOsY=; b=BG7MSf8XYh5BH3
	pLQ3BPzWVyymqFnDqxJqtpSKWufyplpnJKYtBQ2uq3fqZZiMrpSXake6yzvMtD3aW+yqkLlOHna/q
	EptlicfxGyRCIeHuIVQDxmZqKKd+T+aGQjRtT8DnLXL5MgMaPt9IvA5/qa5qNUMP2jhbQa4bHDsYA
	nn3f9r8Y+7+hzrn6fXAPXCAJEc7gSryGTHYA1OoxELHsAln5HYNU64MdEM1HyUZ2bTzHg7MN4LdiZ
	Dn4XllJfhX18f+6SULpYVFck4v9bqbcZUFeQdSPcreZaNPwcumiD42Z9CUUYdl8/HgT4EmI2llmLg
	BiUx52avz/bkjDwUmBPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihJjk-0002HZ-Mj; Tue, 17 Dec 2019 20:46:32 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihJeF-0004ok-LV
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 20:40:59 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 12:40:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="389952626"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga005.jf.intel.com with ESMTP; 17 Dec 2019 12:40:43 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v4 17/19] KVM: Terminate memslot walks via used_slots
Date: Tue, 17 Dec 2019 12:40:39 -0800
Message-Id: <20191217204041.10815-18-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217204041.10815-1-sean.j.christopherson@intel.com>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_124052_081168_F1BE3F54 
X-CRM114-Status: GOOD (  29.00  )
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

Refactor memslot handling to treat the number of used slots as the de
facto size of the memslot array, e.g. return NULL from id_to_memslot()
when an invalid index is provided instead of relying on npages==0 to
detect an invalid memslot.  Rework the sorting and walking of memslots
in advance of dynamically sizing memslots to aid bisection and debug,
e.g. with luck, a bug in the refactoring will bisect here and/or hit a
WARN instead of randomly corrupting memory.

Alternatively, a global null/invalid memslot could be returned, i.e. so
callers of id_to_memslot() don't have to explicitly check for a NULL
memslot, but that approach runs the risk of introducing difficult-to-
debug issues, e.g. if the global null slot is modified.  Constifying
the return from id_to_memslot() to combat such issues is possible, but
would require a massive refactoring of arch specific code and would
still be susceptible to casting shenanigans.

Add function comments to update_memslots() and search_memslots() to
explicitly (and loudly) state how memslots are sorted.

No functional change intended.

Tested-by: Christoffer Dall <christoffer.dall@arm.com>
Tested-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/powerpc/kvm/book3s_hv.c |   2 +-
 arch/x86/kvm/x86.c           |  14 +--
 include/linux/kvm_host.h     |  18 ++-
 virt/kvm/arm/mmu.c           |   9 +-
 virt/kvm/kvm_main.c          | 220 ++++++++++++++++++++++++++---------
 5 files changed, 189 insertions(+), 74 deletions(-)

diff --git a/arch/powerpc/kvm/book3s_hv.c b/arch/powerpc/kvm/book3s_hv.c
index 04d5b7cf874f..c15cabb58e09 100644
--- a/arch/powerpc/kvm/book3s_hv.c
+++ b/arch/powerpc/kvm/book3s_hv.c
@@ -4410,7 +4410,7 @@ static int kvm_vm_ioctl_get_dirty_log_hv(struct kvm *kvm,
 	slots = kvm_memslots(kvm);
 	memslot = id_to_memslot(slots, log->slot);
 	r = -ENOENT;
-	if (!memslot->dirty_bitmap)
+	if (!memslot || !memslot->dirty_bitmap)
 		goto out;
 
 	/*
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index 87fca25d5217..39ba1de85575 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -9532,9 +9532,9 @@ void kvm_arch_sync_events(struct kvm *kvm)
 int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
 {
 	int i, r;
-	unsigned long hva;
+	unsigned long hva, uninitialized_var(old_npages);
 	struct kvm_memslots *slots = kvm_memslots(kvm);
-	struct kvm_memory_slot *slot, old;
+	struct kvm_memory_slot *slot;
 
 	/* Called with kvm->slots_lock held.  */
 	if (WARN_ON(id >= KVM_MEM_SLOTS_NUM))
@@ -9542,7 +9542,7 @@ int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
 
 	slot = id_to_memslot(slots, id);
 	if (size) {
-		if (slot->npages)
+		if (slot && slot->npages)
 			return -EEXIST;
 
 		/*
@@ -9554,13 +9554,13 @@ int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
 		if (IS_ERR((void *)hva))
 			return PTR_ERR((void *)hva);
 	} else {
-		if (!slot->npages)
+		if (!slot || !slot->npages)
 			return 0;
 
-		hva = 0;
+		hva = slot->userspace_addr;
+		old_npages = slot->npages;
 	}
 
-	old = *slot;
 	for (i = 0; i < KVM_ADDRESS_SPACE_NUM; i++) {
 		struct kvm_userspace_memory_region m;
 
@@ -9575,7 +9575,7 @@ int __x86_set_memory_region(struct kvm *kvm, int id, gpa_t gpa, u32 size)
 	}
 
 	if (!size)
-		vm_munmap(old.userspace_addr, old.npages * PAGE_SIZE);
+		vm_munmap(hva, old_npages * PAGE_SIZE);
 
 	return 0;
 }
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 7d666eedd203..49b6b457a157 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -574,10 +574,11 @@ static inline int kvm_vcpu_get_idx(struct kvm_vcpu *vcpu)
 	return vcpu->vcpu_idx;
 }
 
-#define kvm_for_each_memslot(memslot, slots)	\
-	for (memslot = &slots->memslots[0];	\
-	      memslot < slots->memslots + KVM_MEM_SLOTS_NUM && memslot->npages;\
-		memslot++)
+#define kvm_for_each_memslot(memslot, slots)				\
+	for (memslot = &slots->memslots[0];				\
+	     memslot < slots->memslots + slots->used_slots; memslot++)	\
+		if (WARN_ON_ONCE(!memslot->npages)) {			\
+		} else
 
 int kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id);
 void kvm_vcpu_uninit(struct kvm_vcpu *vcpu);
@@ -638,12 +639,15 @@ static inline struct kvm_memslots *kvm_vcpu_memslots(struct kvm_vcpu *vcpu)
 	return __kvm_memslots(vcpu->kvm, as_id);
 }
 
-static inline struct kvm_memory_slot *
-id_to_memslot(struct kvm_memslots *slots, int id)
+static inline
+struct kvm_memory_slot *id_to_memslot(struct kvm_memslots *slots, int id)
 {
 	int index = slots->id_to_index[id];
 	struct kvm_memory_slot *slot;
 
+	if (index < 0)
+		return NULL;
+
 	slot = &slots->memslots[index];
 
 	WARN_ON(slot->id != id);
@@ -1013,6 +1017,8 @@ bool kvm_arch_irqfd_allowed(struct kvm *kvm, struct kvm_irqfd *args);
  * used in non-modular code in arch/powerpc/kvm/book3s_hv_rm_mmu.c.
  * gfn_to_memslot() itself isn't here as an inline because that would
  * bloat other code too much.
+ *
+ * IMPORTANT: Slots are sorted from highest GFN to lowest GFN!
  */
 static inline struct kvm_memory_slot *
 search_memslots(struct kvm_memslots *slots, gfn_t gfn)
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index c49a3d5baad2..ae049c1033f3 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1536,8 +1536,13 @@ void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot)
 {
 	struct kvm_memslots *slots = kvm_memslots(kvm);
 	struct kvm_memory_slot *memslot = id_to_memslot(slots, slot);
-	phys_addr_t start = memslot->base_gfn << PAGE_SHIFT;
-	phys_addr_t end = (memslot->base_gfn + memslot->npages) << PAGE_SHIFT;
+	phys_addr_t start, end;
+
+	if (WARN_ON_ONCE(!memslot))
+		return;
+
+	start = memslot->base_gfn << PAGE_SHIFT;
+	end = (memslot->base_gfn + memslot->npages) << PAGE_SHIFT;
 
 	spin_lock(&kvm->mmu_lock);
 	stage2_wp_range(kvm, start, end);
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 999a2a0c83f5..a1566c5cee26 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -569,7 +569,7 @@ static struct kvm_memslots *kvm_alloc_memslots(void)
 		return NULL;
 
 	for (i = 0; i < KVM_MEM_SLOTS_NUM; i++)
-		slots->id_to_index[i] = slots->memslots[i].id = i;
+		slots->id_to_index[i] = slots->memslots[i].id = -1;
 
 	return slots;
 }
@@ -873,63 +873,162 @@ static int kvm_create_dirty_bitmap(struct kvm_memory_slot *memslot)
 }
 
 /*
- * Insert memslot and re-sort memslots based on their GFN,
- * so binary search could be used to lookup GFN.
- * Sorting algorithm takes advantage of having initially
- * sorted array and known changed memslot position.
+ * Delete a memslot by decrementing the number of used slots and shifting all
+ * other entries in the array forward one spot.
+ */
+static inline void kvm_memslot_delete(struct kvm_memslots *slots,
+				      struct kvm_memory_slot *memslot)
+{
+	struct kvm_memory_slot *mslots = slots->memslots;
+	int i;
+
+	if (WARN_ON(slots->id_to_index[memslot->id] == -1))
+		return;
+
+	slots->used_slots--;
+
+	for (i = slots->id_to_index[memslot->id]; i < slots->used_slots; i++) {
+		mslots[i] = mslots[i + 1];
+		slots->id_to_index[mslots[i].id] = i;
+	}
+	mslots[i] = *memslot;
+	slots->id_to_index[memslot->id] = -1;
+}
+
+/*
+ * "Insert" a new memslot by incrementing the number of used slots.  Returns
+ * the new slot's initial index into the memslots array.
+ */
+static inline int kvm_memslot_insert_back(struct kvm_memslots *slots)
+{
+	return slots->used_slots++;
+}
+
+/*
+ * Move a changed memslot backwards in the array by shifting existing slots
+ * with a higher GFN toward the front of the array.  Note, the changed memslot
+ * itself is not preserved in the array, i.e. not swapped at this time, only
+ * its new index into the array is tracked.  Returns the changed memslot's
+ * current index into the memslots array.
+ */
+static inline int kvm_memslot_move_backward(struct kvm_memslots *slots,
+					    struct kvm_memory_slot *memslot)
+{
+	struct kvm_memory_slot *mslots = slots->memslots;
+	int i;
+
+	if (WARN_ON_ONCE(slots->id_to_index[memslot->id] == -1) ||
+	    WARN_ON_ONCE(!slots->used_slots))
+		return -1;
+
+	/*
+	 * Move the target memslot backward in the array by shifting existing
+	 * memslots with a higher GFN (than the target memslot) towards the
+	 * front of the array.
+	 */
+	for (i = slots->id_to_index[memslot->id]; i < slots->used_slots - 1; i++) {
+		if (memslot->base_gfn > mslots[i + 1].base_gfn)
+			break;
+
+		WARN_ON_ONCE(memslot->base_gfn == mslots[i + 1].base_gfn);
+
+		/* Shift the next memslot forward one and update its index. */
+		mslots[i] = mslots[i + 1];
+		slots->id_to_index[mslots[i].id] = i;
+	}
+	return i;
+}
+
+/*
+ * Move a changed memslot forwards in the array by shifting existing slots with
+ * a lower GFN toward the back of the array.  Note, the changed memslot itself
+ * is not preserved in the array, i.e. not swapped at this time, only its new
+ * index into the array is tracked.  Returns the changed memslot's final index
+ * into the memslots array.
+ */
+static inline int kvm_memslot_move_forward(struct kvm_memslots *slots,
+					   struct kvm_memory_slot *memslot,
+					   int start)
+{
+	struct kvm_memory_slot *mslots = slots->memslots;
+	int i;
+
+	for (i = start; i > 0; i--) {
+		if (memslot->base_gfn < mslots[i - 1].base_gfn)
+			break;
+
+		WARN_ON_ONCE(memslot->base_gfn == mslots[i - 1].base_gfn);
+
+		/* Shift the next memslot back one and update its index. */
+		mslots[i] = mslots[i - 1];
+		slots->id_to_index[mslots[i].id] = i;
+	}
+	return i;
+}
+
+/*
+ * Re-sort memslots based on their GFN to account for an added, deleted, or
+ * moved memslot.  Sorting memslots by GFN allows using a binary search during
+ * memslot lookup.
+ *
+ * IMPORTANT: Slots are sorted from highest GFN to lowest GFN!  I.e. the entry
+ * at memslots[0] has the highest GFN.
+ *
+ * The sorting algorithm takes advantage of having initially sorted memslots
+ * and knowing the position of the changed memslot.  Sorting is also optimized
+ * by not swapping the updated memslot and instead only shifting other memslots
+ * and tracking the new index for the update memslot.  Only once its final
+ * index is known is the updated memslot copied into its position in the array.
+ *
+ *  - When deleting a memslot, the deleted memslot simply needs to be moved to
+ *    the end of the array.
+ *
+ *  - When creating a memslot, the algorithm "inserts" the new memslot at the
+ *    end of the array and then it forward to its correct location.
+ *
+ *  - When moving a memslot, the algorithm first moves the updated memslot
+ *    backward to handle the scenario where the memslot's GFN was changed to a
+ *    lower value.  update_memslots() then falls through and runs the same flow
+ *    as creating a memslot to move the memslot forward to handle the scenario
+ *    where its GFN was changed to a higher value.
+ *
+ * Note, slots are sorted from highest->lowest instead of lowest->highest for
+ * historical reasons.  Originally, invalid memslots where denoted by having
+ * GFN=0, thus sorting from highest->lowest naturally sorted invalid memslots
+ * to the end of the array.  The current algorithm uses dedicated logic to
+ * delete a memslot and thus does not rely on invalid memslots having GFN=0.
+ *
+ * The other historical motiviation for highest->lowest was to improve the
+ * performance of memslot lookup.  KVM originally used a linear search starting
+ * at memslots[0].  On x86, the largest memslot usually has one of the highest,
+ * if not *the* highest, GFN, as the bulk of the guest's RAM is located in a
+ * single memslot above the 4gb boundary.  As the largest memslot is also the
+ * most likely to be referenced, sorting it to the front of the array was
+ * advantageous.  The current binary search starts from the middle of the array
+ * and uses an LRU pointer to improve performance for all memslots and GFNs.
  */
 static void update_memslots(struct kvm_memslots *slots,
-			    struct kvm_memory_slot *new,
+			    struct kvm_memory_slot *memslot,
 			    enum kvm_mr_change change)
 {
-	int id = new->id;
-	int i = slots->id_to_index[id];
-	struct kvm_memory_slot *mslots = slots->memslots;
+	int i;
 
-	WARN_ON(mslots[i].id != id);
-	switch (change) {
-	case KVM_MR_CREATE:
-		slots->used_slots++;
-		WARN_ON(mslots[i].npages || !new->npages);
-		break;
-	case KVM_MR_DELETE:
-		slots->used_slots--;
-		WARN_ON(new->npages || !mslots[i].npages);
-		break;
-	default:
-		break;
-	}
+	if (change == KVM_MR_DELETE) {
+		kvm_memslot_delete(slots, memslot);
+	} else {
+		if (change == KVM_MR_CREATE)
+			i = kvm_memslot_insert_back(slots);
+		else
+			i = kvm_memslot_move_backward(slots, memslot);
+		i = kvm_memslot_move_forward(slots, memslot, i);
 
-	while (i < KVM_MEM_SLOTS_NUM - 1 &&
-	       new->base_gfn <= mslots[i + 1].base_gfn) {
-		if (!mslots[i + 1].npages)
-			break;
-		mslots[i] = mslots[i + 1];
-		slots->id_to_index[mslots[i].id] = i;
-		i++;
+		/*
+		 * Copy the memslot to its new position in memslots and update
+		 * its index accordingly.
+		 */
+		slots->memslots[i] = *memslot;
+		slots->id_to_index[memslot->id] = i;
 	}
-
-	/*
-	 * The ">=" is needed when creating a slot with base_gfn == 0,
-	 * so that it moves before all those with base_gfn == npages == 0.
-	 *
-	 * On the other hand, if new->npages is zero, the above loop has
-	 * already left i pointing to the beginning of the empty part of
-	 * mslots, and the ">=" would move the hole backwards in this
-	 * case---which is wrong.  So skip the loop when deleting a slot.
-	 */
-	if (new->npages) {
-		while (i > 0 &&
-		       new->base_gfn >= mslots[i - 1].base_gfn) {
-			mslots[i] = mslots[i - 1];
-			slots->id_to_index[mslots[i].id] = i;
-			i--;
-		}
-	} else
-		WARN_ON_ONCE(i != slots->used_slots);
-
-	mslots[i] = *new;
-	slots->id_to_index[mslots[i].id] = i;
 }
 
 static int check_memory_region_flags(const struct kvm_userspace_memory_region *mem)
@@ -1108,8 +1207,13 @@ int __kvm_set_memory_region(struct kvm *kvm,
 	 * when the memslots are re-sorted by update_memslots().
 	 */
 	tmp = id_to_memslot(__kvm_memslots(kvm, as_id), id);
-	old = *tmp;
-	tmp = NULL;
+	if (tmp) {
+		old = *tmp;
+		tmp = NULL;
+	} else {
+		memset(&old, 0, sizeof(old));
+		old.id = id;
+	}
 
 	if (!mem->memory_size)
 		return kvm_delete_memslot(kvm, mem, &old, as_id);
@@ -1227,7 +1331,7 @@ int kvm_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log,
 
 	slots = __kvm_memslots(kvm, as_id);
 	*memslot = id_to_memslot(slots, id);
-	if (!(*memslot)->dirty_bitmap)
+	if (!(*memslot) || !(*memslot)->dirty_bitmap)
 		return -ENOENT;
 
 	kvm_arch_sync_dirty_log(kvm, *memslot);
@@ -1285,10 +1389,10 @@ static int kvm_get_dirty_log_protect(struct kvm *kvm, struct kvm_dirty_log *log)
 
 	slots = __kvm_memslots(kvm, as_id);
 	memslot = id_to_memslot(slots, id);
+	if (!memslot || !memslot->dirty_bitmap)
+		return -ENOENT;
 
 	dirty_bitmap = memslot->dirty_bitmap;
-	if (!dirty_bitmap)
-		return -ENOENT;
 
 	kvm_arch_sync_dirty_log(kvm, memslot);
 
@@ -1396,10 +1500,10 @@ static int kvm_clear_dirty_log_protect(struct kvm *kvm,
 
 	slots = __kvm_memslots(kvm, as_id);
 	memslot = id_to_memslot(slots, id);
+	if (!memslot || !memslot->dirty_bitmap)
+		return -ENOENT;
 
 	dirty_bitmap = memslot->dirty_bitmap;
-	if (!dirty_bitmap)
-		return -ENOENT;
 
 	n = ALIGN(log->num_pages, BITS_PER_LONG) / 8;
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
