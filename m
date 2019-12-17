Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5ABE1237F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 21:43:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqcQIPe8wZSzh8I+8l3VTBqVkOLSbkH+Ww3q+pmIeps=; b=IJcCCAWXl71eli
	AiOajtXg2rV7wNIRJTfieQL3gaSu0knodXQLOKW7kHO1DQwAcqcpVXdbbNvO5YfrIAwkTMYR+PXn0
	d7BypU9QZ0wrr0crgfK5Y7BtAGGwrGCc4hXG4797tr/s06Ji6CD3/NhsdyPZvJ2zE9tJbunUdwmba
	EMWC0hemlQfZiSWMBGl3JgZbd5rNaA2/UZOg/7hAj8GiX+XOF2SBmkSaYDBeh7X1mlUgExJe5GvT6
	YVSAsWYibuWjGsjwtwLOrlg98VBdcT/qzCdDS4wtoOsXn0ZdgCn3WMoxEXSOispOKZwUAgDVZlYv5
	UvC14fftxItMVGeY/oyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihJh6-0007AS-Ql; Tue, 17 Dec 2019 20:43:49 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihJeA-0004mj-Oi
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 20:40:51 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 12:40:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="389952609"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga005.jf.intel.com with ESMTP; 17 Dec 2019 12:40:43 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v4 12/19] KVM: Move memslot deletion to helper function
Date: Tue, 17 Dec 2019 12:40:34 -0800
Message-Id: <20191217204041.10815-13-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217204041.10815-1-sean.j.christopherson@intel.com>
References: <20191217204041.10815-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_124046_873343_FEF47EE9 
X-CRM114-Status: GOOD (  19.17  )
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

Move memslot deletion into its own routine so that the success path for
other memslot updates does not need to use kvm_free_memslot(), i.e. can
explicitly destroy the dirty bitmap when necessary.  This paves the way
for dropping @dont from kvm_free_memslot(), i.e. all callers now pass
NULL for @dont.

Add a comment above the code to make a copy of the existing memslot
prior to deletion, it is not at all obvious that the pointer will become
stale during sorting and/or installation of new memslots.

Note, kvm_arch_commit_memory_region() allows an architecture to free
resources when moving a memslot or changing its flags, e.g. x86 frees
its arch specific memslot metadata during commit_memory_region().

Acked-by: Christoffer Dall <christoffer.dall@arm.com>
Tested-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 virt/kvm/kvm_main.c | 73 +++++++++++++++++++++++++++------------------
 1 file changed, 44 insertions(+), 29 deletions(-)

diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index acf52fa16500..50e5aec0c15c 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -1046,6 +1046,27 @@ static int kvm_set_memslot(struct kvm *kvm,
 	return r;
 }
 
+static int kvm_delete_memslot(struct kvm *kvm,
+			      const struct kvm_userspace_memory_region *mem,
+			      struct kvm_memory_slot *old, int as_id)
+{
+	struct kvm_memory_slot new;
+	int r;
+
+	if (!old->npages)
+		return -EINVAL;
+
+	memset(&new, 0, sizeof(new));
+	new.id = old->id;
+
+	r = kvm_set_memslot(kvm, mem, old, &new, as_id, KVM_MR_DELETE);
+	if (r)
+		return r;
+
+	kvm_free_memslot(kvm, old, NULL);
+	return 0;
+}
+
 /*
  * Allocate some memory and give it an address in the guest physical address
  * space.
@@ -1095,7 +1116,15 @@ int __kvm_set_memory_region(struct kvm *kvm,
 	if (npages > KVM_MEM_MAX_NR_PAGES)
 		return -EINVAL;
 
-	new = old = *slot;
+	/*
+	 * Make a full copy of the old memslot, the pointer will become stale
+	 * when the memslots are re-sorted by update_memslots().
+	 */
+	old = *slot;
+	if (!mem->memory_size)
+		return kvm_delete_memslot(kvm, mem, &old, as_id);
+
+	new = old;
 
 	new.id = id;
 	new.base_gfn = base_gfn;
@@ -1103,29 +1132,20 @@ int __kvm_set_memory_region(struct kvm *kvm,
 	new.flags = mem->flags;
 	new.userspace_addr = mem->userspace_addr;
 
-	if (npages) {
-		if (!old.npages)
-			change = KVM_MR_CREATE;
-		else { /* Modify an existing slot. */
-			if ((new.userspace_addr != old.userspace_addr) ||
-			    (npages != old.npages) ||
-			    ((new.flags ^ old.flags) & KVM_MEM_READONLY))
-				return -EINVAL;
-
-			if (base_gfn != old.base_gfn)
-				change = KVM_MR_MOVE;
-			else if (new.flags != old.flags)
-				change = KVM_MR_FLAGS_ONLY;
-			else /* Nothing to change. */
-				return 0;
-		}
-	} else {
-		if (!old.npages)
+	if (!old.npages) {
+		change = KVM_MR_CREATE;
+	} else { /* Modify an existing slot. */
+		if ((new.userspace_addr != old.userspace_addr) ||
+		    (npages != old.npages) ||
+		    ((new.flags ^ old.flags) & KVM_MEM_READONLY))
 			return -EINVAL;
 
-		change = KVM_MR_DELETE;
-		new.base_gfn = 0;
-		new.flags = 0;
+		if (base_gfn != old.base_gfn)
+			change = KVM_MR_MOVE;
+		else if (new.flags != old.flags)
+			change = KVM_MR_FLAGS_ONLY;
+		else /* Nothing to change. */
+			return 0;
 	}
 
 	if ((change == KVM_MR_CREATE) || (change == KVM_MR_MOVE)) {
@@ -1148,17 +1168,12 @@ int __kvm_set_memory_region(struct kvm *kvm,
 			return r;
 	}
 
-	/* actual memory is freed via old in kvm_free_memslot below */
-	if (change == KVM_MR_DELETE) {
-		new.dirty_bitmap = NULL;
-		memset(&new.arch, 0, sizeof(new.arch));
-	}
-
 	r = kvm_set_memslot(kvm, mem, &old, &new, as_id, change);
 	if (r)
 		goto out_bitmap;
 
-	kvm_free_memslot(kvm, &old, &new);
+	if (old.dirty_bitmap && !new.dirty_bitmap)
+		kvm_destroy_dirty_bitmap(&old);
 	return 0;
 
 out_bitmap:
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
