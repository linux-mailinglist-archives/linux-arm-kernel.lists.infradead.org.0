Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A6EB044B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 20:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vy2Pu112oK+Acis9Cgjtki02ynR2II/085NdI1A/DrU=; b=KMUdqMvRKpQHfl
	+BDYEpEOvbwiUP8eSFfKhojNvSYtvNNZq2+S0E61RKwxei7RNtSzyq+/SCA3c1J4d1RTvZPwnk4KZ
	stGLfzhd8XLXz+tjGA7UYMr7GKOH7QlLFyzNvoCNSj59K62pcrYnx0nqMF1Bba0zEkCvCTiicgQrK
	CB0gX+8KieF0Kc9GDopxnWlFggXZAma6RB/F4Inaj41JnMmr7PaGcgse0VJjjFeudb6oNGU9fDvL9
	BCK0yRrPY0CjRZczKd8WgqNZihI80xOVe2ec7abqOafb2tHcxW8dicaG1Wegd0tK7QCc7gUKFpQta
	NrxlV68rBj8UauETvsuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87m1-0002CP-8t; Wed, 11 Sep 2019 18:55:25 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87hb-0007FV-EV
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 18:50:54 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 11:50:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="196980903"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by orsmga002.jf.intel.com with ESMTP; 11 Sep 2019 11:50:41 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 13/13] KVM: Dynamically size memslot array based on number of
 used slots
Date: Wed, 11 Sep 2019 11:50:38 -0700
Message-Id: <20190911185038.24341-14-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190911185038.24341-1-sean.j.christopherson@intel.com>
References: <20190911185038.24341-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_115052_104559_DBE0B3D3 
X-CRM114-Status: GOOD (  14.72  )
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

Now that the memslot logic doesn't assume memslots are always non-NULL,
dynamically size the array of memslots instead of unconditionally
allocating memory for the maximum number of memslots.

Note, because a to-be-deleted memslot must first be invalidated, the
array size cannot be immediately reduced when deleting a memslot.
However, consecutive deletions will realize the memory savings, i.e.
a second deletion will trim the entry.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 include/linux/kvm_host.h |  5 ++++-
 virt/kvm/kvm_main.c      | 31 ++++++++++++++++++++++++++++---
 2 files changed, 32 insertions(+), 4 deletions(-)

diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 40ea5df50faa..8feb61bfbd1a 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -433,11 +433,14 @@ static inline int kvm_arch_vcpu_memslots_id(struct kvm_vcpu *vcpu)
  */
 struct kvm_memslots {
 	u64 generation;
-	struct kvm_memory_slot memslots[KVM_MEM_SLOTS_NUM];
 	/* The mapping table from slot id to the index in memslots[]. */
 	short id_to_index[KVM_MEM_SLOTS_NUM];
 	atomic_t lru_slot;
 	int used_slots;
+	struct kvm_memory_slot memslots[];
+	/*
+	 * WARNING: 'memslots' is dynamically-sized.  It *MUST* be at the end.
+	 */
 };
 
 struct kvm {
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index e2571a9ccfc4..f952a0bec67a 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -535,7 +535,7 @@ static struct kvm_memslots *kvm_alloc_memslots(void)
 		return NULL;
 
 	for (i = 0; i < KVM_MEM_SLOTS_NUM; i++)
-		slots->id_to_index[i] = slots->memslots[i].id = -1;
+		slots->id_to_index[i] = -1;
 
 	return slots;
 }
@@ -933,6 +933,32 @@ static struct kvm_memslots *install_new_memslots(struct kvm *kvm,
 	return old_memslots;
 }
 
+/*
+ * Note, at a minimum, the current number of used slots must be allocated, even
+ * when deleting a memslot, as we need a complete duplicate of the memslots for
+ * use when invalidating a memslot prior to deleting/moving the memslot.
+ */
+static struct kvm_memslots *kvm_dup_memslots(struct kvm_memslots *old,
+					     enum kvm_mr_change change)
+{
+	struct kvm_memslots *slots;
+	size_t old_size, new_size;
+
+	old_size = sizeof(struct kvm_memslots) +
+		   (sizeof(struct kvm_memory_slot) * old->used_slots);
+
+	if (change == KVM_MR_CREATE)
+		new_size = old_size + sizeof(struct kvm_memory_slot);
+	else
+		new_size = old_size;
+
+	slots = kvzalloc(new_size, GFP_KERNEL_ACCOUNT);
+	if (likely(slots))
+		memcpy(slots, old, old_size);
+
+	return slots;
+}
+
 static int kvm_set_memslot(struct kvm *kvm,
 			   const struct kvm_userspace_memory_region *mem,
 			   const struct kvm_memory_slot *old,
@@ -943,10 +969,9 @@ static int kvm_set_memslot(struct kvm *kvm,
 	struct kvm_memslots *slots;
 	int r;
 
-	slots = kvzalloc(sizeof(struct kvm_memslots), GFP_KERNEL_ACCOUNT);
+	slots = kvm_dup_memslots(__kvm_memslots(kvm, as_id), change);
 	if (!slots)
 		return -ENOMEM;
-	memcpy(slots, __kvm_memslots(kvm, as_id), sizeof(struct kvm_memslots));
 
 	if (change == KVM_MR_DELETE || change == KVM_MR_MOVE) {
 		/*
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
