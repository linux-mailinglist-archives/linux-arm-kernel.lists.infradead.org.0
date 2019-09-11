Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DECB0425
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 20:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tZvfhWJ7J7Lr86kPQnCW41vikiBTgYfQnqJnHev110=; b=OG0B0BWkg5aJC2
	wP5XwwDH9dbs74ZKoWoemkCykVG/dXPJJVPcTrPFf0UP7cQGSYrBRgcBagGXqHSXnN7BEOALKEaP9
	Rm+0CrtVKR/gTg8j2kh2JmGarRIsAthHPtKRYaPubWp0vS57L6PVUYtUttNOH3WLoCcH6KC6XyiEu
	zxGsFSR471DprNmFI5+LdfDBm3xqhmz5rxuKIlLTvtMU6z6ozK9ZipNzMupHZegwgvTmwPn33ClMG
	vA5OAxgDNwIKMQjKKbY1bVwwc1IH22LneMwMEPWO01Vt11GRkhjLE9ZMsdkDGAF11KXwT8eCLdn/H
	RRylA+1gjYvaCOa+EC8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i87iE-0007YQ-Vm; Wed, 11 Sep 2019 18:51:31 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i87hR-0007FB-Su
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 18:50:43 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 11:50:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="196980864"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by orsmga002.jf.intel.com with ESMTP; 11 Sep 2019 11:50:40 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH 01/13] KVM: Reinstall old memslots if arch preparation fails
Date: Wed, 11 Sep 2019 11:50:26 -0700
Message-Id: <20190911185038.24341-2-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190911185038.24341-1-sean.j.christopherson@intel.com>
References: <20190911185038.24341-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_115041_939299_23FF9E78 
X-CRM114-Status: GOOD (  13.24  )
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

Reinstall the old memslots if preparing the new memory region fails
after invalidating a to-be-{re}moved memslot.

Remove the superfluous 'old_memslots' variable so that it's somewhat
clear that the error handling path needs to free the unused memslots,
not simply the 'old' memslots.

Fixes: bc6678a33d9b9 ("KVM: introduce kvm->srcu and convert kvm_set_memory_region to SRCU update")
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 virt/kvm/kvm_main.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index c6a91b044d8d..daa5de5b3f88 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -923,7 +923,7 @@ int __kvm_set_memory_region(struct kvm *kvm,
 	unsigned long npages;
 	struct kvm_memory_slot *slot;
 	struct kvm_memory_slot old, new;
-	struct kvm_memslots *slots = NULL, *old_memslots;
+	struct kvm_memslots *slots;
 	int as_id, id;
 	enum kvm_mr_change change;
 
@@ -1031,7 +1031,13 @@ int __kvm_set_memory_region(struct kvm *kvm,
 		slot = id_to_memslot(slots, id);
 		slot->flags |= KVM_MEMSLOT_INVALID;
 
-		old_memslots = install_new_memslots(kvm, as_id, slots);
+		/*
+		 * We can re-use the old memslots, the only difference from the
+		 * newly installed memslots is the invalid flag, which will get
+		 * dropped by update_memslots anyway.  We'll also revert to the
+		 * old memslots if preparing the new memory region fails.
+		 */
+		slots = install_new_memslots(kvm, as_id, slots);
 
 		/* From this point no new shadow pages pointing to a deleted,
 		 * or moved, memslot will be created.
@@ -1041,13 +1047,6 @@ int __kvm_set_memory_region(struct kvm *kvm,
 		 *	- kvm_is_visible_gfn (mmu_check_roots)
 		 */
 		kvm_arch_flush_shadow_memslot(kvm, slot);
-
-		/*
-		 * We can re-use the old_memslots from above, the only difference
-		 * from the currently installed memslots is the invalid flag.  This
-		 * will get overwritten by update_memslots anyway.
-		 */
-		slots = old_memslots;
 	}
 
 	r = kvm_arch_prepare_memory_region(kvm, &new, mem, change);
@@ -1061,15 +1060,17 @@ int __kvm_set_memory_region(struct kvm *kvm,
 	}
 
 	update_memslots(slots, &new, change);
-	old_memslots = install_new_memslots(kvm, as_id, slots);
+	slots = install_new_memslots(kvm, as_id, slots);
 
 	kvm_arch_commit_memory_region(kvm, mem, &old, &new, change);
 
 	kvm_free_memslot(kvm, &old, &new);
-	kvfree(old_memslots);
+	kvfree(slots);
 	return 0;
 
 out_slots:
+	if (change == KVM_MR_DELETE || change == KVM_MR_MOVE)
+		slots = install_new_memslots(kvm, as_id, slots);
 	kvfree(slots);
 out_free:
 	kvm_free_memslot(kvm, &new, &old);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
