Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 830BADF9D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 02:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3x5mHWoDbIcgDZO0etQkuZUIp2lYrn9UKmYEHHdyM8=; b=AaUPw/QR/BR1yS
	PC1PbYvX3eqZfMOjunZ2j/2Lmm35bREsmQuNcAWdTuwsJO7b+duOzdRQ6ABW3pPjbVisWMDNU9gp4
	eJEqL9rHqzdfSSGHZrqCqDbC2cKdro2nhoGpd2c4CSU7VZP+Q/qkeFH9YXPVf2Gt8wvwG0tqPwiIR
	2ZV+WH8CeHTX7o20l7yFwBYzdNk5RY9lgZ5KVoCIJpXS5WPzowHL290PxPH9lVQbC9Edt0oyDEGI+
	vC0GYoXpRQLHdI8/S/VrYSJTrL/KPUemCzm67qswYTyR2g7HVY47pAcV7tJ7t7/TauhS+2YdGuSwl
	GcbPShy/rGnhUzXrLxEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMiBN-0000iY-UK; Tue, 22 Oct 2019 00:37:53 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMi9H-0007Ji-WB
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 00:35:47 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 17:35:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="348897217"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2019 17:35:39 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v2 07/15] KVM: Refactor error handling for setting memory
 region
Date: Mon, 21 Oct 2019 17:35:29 -0700
Message-Id: <20191022003537.13013-8-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191022003537.13013-1-sean.j.christopherson@intel.com>
References: <20191022003537.13013-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_173544_066680_6772F8D9 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, Wanpeng Li <wanpengli@tencent.com>,
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

Replace a big pile o' gotos with returns to make it more obvious what
error code is being returned, and to prepare for refactoring the
functional, i.e. post-checks, portion of __kvm_set_memory_region().

Reviewed-by: Janosch Frank <frankja@linux.ibm.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 virt/kvm/kvm_main.c | 40 ++++++++++++++++++----------------------
 1 file changed, 18 insertions(+), 22 deletions(-)

diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 26151e2e3365..40e27ffaf29a 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -930,34 +930,33 @@ int __kvm_set_memory_region(struct kvm *kvm,
 
 	r = check_memory_region_flags(mem);
 	if (r)
-		goto out;
+		return r;
 
-	r = -EINVAL;
 	as_id = mem->slot >> 16;
 	id = (u16)mem->slot;
 
 	/* General sanity checks */
 	if (mem->memory_size & (PAGE_SIZE - 1))
-		goto out;
+		return -EINVAL;
 	if (mem->guest_phys_addr & (PAGE_SIZE - 1))
-		goto out;
+		return -EINVAL;
 	/* We can read the guest memory with __xxx_user() later on. */
 	if ((id < KVM_USER_MEM_SLOTS) &&
 	    ((mem->userspace_addr & (PAGE_SIZE - 1)) ||
 	     !access_ok((void __user *)(unsigned long)mem->userspace_addr,
 			mem->memory_size)))
-		goto out;
+		return -EINVAL;
 	if (as_id >= KVM_ADDRESS_SPACE_NUM || id >= KVM_MEM_SLOTS_NUM)
-		goto out;
+		return -EINVAL;
 	if (mem->guest_phys_addr + mem->memory_size < mem->guest_phys_addr)
-		goto out;
+		return -EINVAL;
 
 	slot = id_to_memslot(__kvm_memslots(kvm, as_id), id);
 	base_gfn = mem->guest_phys_addr >> PAGE_SHIFT;
 	npages = mem->memory_size >> PAGE_SHIFT;
 
 	if (npages > KVM_MEM_MAX_NR_PAGES)
-		goto out;
+		return -EINVAL;
 
 	new = old = *slot;
 
@@ -974,20 +973,18 @@ int __kvm_set_memory_region(struct kvm *kvm,
 			if ((new.userspace_addr != old.userspace_addr) ||
 			    (npages != old.npages) ||
 			    ((new.flags ^ old.flags) & KVM_MEM_READONLY))
-				goto out;
+				return -EINVAL;
 
 			if (base_gfn != old.base_gfn)
 				change = KVM_MR_MOVE;
 			else if (new.flags != old.flags)
 				change = KVM_MR_FLAGS_ONLY;
-			else { /* Nothing to change. */
-				r = 0;
-				goto out;
-			}
+			else /* Nothing to change. */
+				return 0;
 		}
 	} else {
 		if (!old.npages)
-			goto out;
+			return -EINVAL;
 
 		change = KVM_MR_DELETE;
 		new.base_gfn = 0;
@@ -996,29 +993,29 @@ int __kvm_set_memory_region(struct kvm *kvm,
 
 	if ((change == KVM_MR_CREATE) || (change == KVM_MR_MOVE)) {
 		/* Check for overlaps */
-		r = -EEXIST;
 		kvm_for_each_memslot(slot, __kvm_memslots(kvm, as_id)) {
 			if (slot->id == id)
 				continue;
 			if (!((base_gfn + npages <= slot->base_gfn) ||
 			      (base_gfn >= slot->base_gfn + slot->npages)))
-				goto out;
+				return -EEXIST;
 		}
 	}
 
-	r = -ENOMEM;
-
 	/* Allocate/free page dirty bitmap as needed */
 	if (!(new.flags & KVM_MEM_LOG_DIRTY_PAGES))
 		new.dirty_bitmap = NULL;
 	else if (!new.dirty_bitmap) {
-		if (kvm_create_dirty_bitmap(&new) < 0)
-			goto out;
+		r = kvm_create_dirty_bitmap(&new);
+		if (r)
+			return r;
 	}
 
 	slots = kvzalloc(sizeof(struct kvm_memslots), GFP_KERNEL_ACCOUNT);
-	if (!slots)
+	if (!slots) {
+		r = -ENOMEM;
 		goto out_bitmap;
+	}
 	memcpy(slots, __kvm_memslots(kvm, as_id), sizeof(struct kvm_memslots));
 
 	if ((change == KVM_MR_DELETE) || (change == KVM_MR_MOVE)) {
@@ -1069,7 +1066,6 @@ int __kvm_set_memory_region(struct kvm *kvm,
 out_bitmap:
 	if (new.dirty_bitmap && !old.dirty_bitmap)
 		kvm_destroy_dirty_bitmap(&new);
-out:
 	return r;
 }
 EXPORT_SYMBOL_GPL(__kvm_set_memory_region);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
