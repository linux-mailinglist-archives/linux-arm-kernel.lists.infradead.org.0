Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E358D1447CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:37:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8G6iTrd2wY4NenZ0NdpoQkr4jptjieqTM0QbpSPnHyg=; b=DNPjnCoTCRAFF6
	nSeiFrVvjwqvsYI0ty6CAZLVU3xHYkO//1bGta9gpvJud3NeTNmCj1MMwjxvDMb0jhyf5TXcHekek
	aItA3qammvR+93GrpHCPZn60emeYAkTVqGAnmHZ3nzj3M7OkqCDwtuGqbxr9vJotndZszBa7zjIWl
	QS9xnG+28K9mIw/AmKwh2rfBIJe2EkyuXDTaVRaMVKUuVOSCDnna09fJ1J9+Ok81RRZdb5o6YEgiT
	Zo4PdRwa45aKGmgq6xR0b93QCtGvQrM3pY2lckPYmi5ZaXQdAXdQIorE7MQdg3dk6spziElgKy4ey
	/8ptA/IInRfct6YrOhXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu28o-0007co-Av; Tue, 21 Jan 2020 22:36:58 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu24I-0002IC-Fx
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:32:20 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 14:32:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="244845177"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 21 Jan 2020 14:32:04 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v5 18/19] KVM: Dynamically size memslot array based on number
 of used slots
Date: Tue, 21 Jan 2020 14:31:56 -0800
Message-Id: <20200121223157.15263-19-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200121223157.15263-1-sean.j.christopherson@intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_143218_662405_9C5959CA 
X-CRM114-Status: GOOD (  15.21  )
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

Now that the memslot logic doesn't assume memslots are always non-NULL,
dynamically size the array of memslots instead of unconditionally
allocating memory for the maximum number of memslots.

Note, because a to-be-deleted memslot must first be invalidated, the
array size cannot be immediately reduced when deleting a memslot.
However, consecutive deletions will realize the memory savings, i.e.
a second deletion will trim the entry.

Tested-by: Christoffer Dall <christoffer.dall@arm.com>
Tested-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 include/linux/kvm_host.h |  2 +-
 virt/kvm/kvm_main.c      | 31 ++++++++++++++++++++++++++++---
 2 files changed, 29 insertions(+), 4 deletions(-)

diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 60ddfdb69378..8bb6fb127387 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -431,11 +431,11 @@ static inline int kvm_arch_vcpu_memslots_id(struct kvm_vcpu *vcpu)
  */
 struct kvm_memslots {
 	u64 generation;
-	struct kvm_memory_slot memslots[KVM_MEM_SLOTS_NUM];
 	/* The mapping table from slot id to the index in memslots[]. */
 	short id_to_index[KVM_MEM_SLOTS_NUM];
 	atomic_t lru_slot;
 	int used_slots;
+	struct kvm_memory_slot memslots[];
 };
 
 struct kvm {
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 9b614cf2ca20..ed392ce64e59 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -565,7 +565,7 @@ static struct kvm_memslots *kvm_alloc_memslots(void)
 		return NULL;
 
 	for (i = 0; i < KVM_MEM_SLOTS_NUM; i++)
-		slots->id_to_index[i] = slots->memslots[i].id = -1;
+		slots->id_to_index[i] = -1;
 
 	return slots;
 }
@@ -1077,6 +1077,32 @@ static struct kvm_memslots *install_new_memslots(struct kvm *kvm,
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
 			   struct kvm_memory_slot *old,
@@ -1087,10 +1113,9 @@ static int kvm_set_memslot(struct kvm *kvm,
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
