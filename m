Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F330163464
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:11:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kihR18oQZWAuy/OegY3QzqzagWsDOEXdOLHKXvZyVno=; b=JMK/YmYKqdhHwl
	m3s4YRstMEdzgsdDs3iDTyayY3o8TBSYI+wsCUiQLBL6jpiD0+Fn+UfpKiRJw+0+ln+PhcXwyGlmG
	drzd2qT8EvCniXTVzzkRM3LJCybq1TJxyp0qaPWsNBZgy4Cb8rlLdFBHuTzVpYuVbHK7gT908eGBI
	aB8kxg77sPkFwnb9x5zZsp6YnUejQEb+E7A3nUGWLkwHCtW7crFPIdtWuQh0981Nw7J/79c0b+V3U
	4VYkMZ5p24nlOiQSAk7JNqZHAS9WNVnLGcMocFawECfPkrE9mz3yP/DX5OiH856y9BtNTsdKLaXp8
	ZSbN3Cx6u2ZiuuJ8rYxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4A8o-00053w-No; Tue, 18 Feb 2020 21:10:50 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4A5w-0000zq-DQ
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:07:54 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 13:07:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,457,1574150400"; d="scan'208";a="253856472"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 18 Feb 2020 13:07:47 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v6 22/22] KVM: x86/mmu: Consolidate open coded variants of
 memslot TLB flushes
Date: Tue, 18 Feb 2020 13:07:36 -0800
Message-Id: <20200218210736.16432-23-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218210736.16432-1-sean.j.christopherson@intel.com>
References: <20200218210736.16432-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_130752_696349_3424BC0C 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
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

Replace open coded instances of kvm_arch_flush_remote_tlbs_memslot()'s
functionality with calls to the aforementioned function.  Update the
comment in kvm_arch_flush_remote_tlbs_memslot() to elaborate on how it
is used and why it asserts that slots_lock is held.

No functional change intended.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/x86/kvm/mmu/mmu.c | 34 +++++++++-------------------------
 1 file changed, 9 insertions(+), 25 deletions(-)

diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index 8a6516ce2983..1eb8654cc9d0 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -5870,13 +5870,6 @@ void kvm_mmu_slot_remove_write_access(struct kvm *kvm,
 				      false);
 	spin_unlock(&kvm->mmu_lock);
 
-	/*
-	 * kvm_mmu_slot_remove_write_access() and kvm_vm_ioctl_get_dirty_log()
-	 * which do tlb flush out of mmu-lock should be serialized by
-	 * kvm->slots_lock otherwise tlb flush would be missed.
-	 */
-	lockdep_assert_held(&kvm->slots_lock);
-
 	/*
 	 * We can flush all the TLBs out of the mmu lock without TLB
 	 * corruption since we just change the spte from writable to
@@ -5889,8 +5882,7 @@ void kvm_mmu_slot_remove_write_access(struct kvm *kvm,
 	 * on PT_WRITABLE_MASK anymore.
 	 */
 	if (flush)
-		kvm_flush_remote_tlbs_with_address(kvm, memslot->base_gfn,
-			memslot->npages);
+		kvm_arch_flush_remote_tlbs_memslot(kvm, memslot);
 }
 
 static bool kvm_mmu_zap_collapsible_spte(struct kvm *kvm,
@@ -5946,8 +5938,11 @@ void kvm_arch_flush_remote_tlbs_memslot(struct kvm *kvm,
 					struct kvm_memory_slot *memslot)
 {
 	/*
-	 * All the TLBs can be flushed out of mmu lock, see the comments in
-	 * kvm_mmu_slot_remove_write_access().
+	 * All current use cases for flushing the TLBs for a specific memslot
+	 * are related to dirty logging, and do the TLB flush out of mmu_lock.
+	 * The interaction between the various operations on memslot must be
+	 * serialized by slots_locks to ensure the TLB flush from one operation
+	 * is observed by any other operation on the same memslot.
 	 */
 	lockdep_assert_held(&kvm->slots_lock);
 	kvm_flush_remote_tlbs_with_address(kvm, memslot->base_gfn,
@@ -5963,8 +5958,6 @@ void kvm_mmu_slot_leaf_clear_dirty(struct kvm *kvm,
 	flush = slot_handle_leaf(kvm, memslot, __rmap_clear_dirty, false);
 	spin_unlock(&kvm->mmu_lock);
 
-	lockdep_assert_held(&kvm->slots_lock);
-
 	/*
 	 * It's also safe to flush TLBs out of mmu lock here as currently this
 	 * function is only used for dirty logging, in which case flushing TLB
@@ -5972,8 +5965,7 @@ void kvm_mmu_slot_leaf_clear_dirty(struct kvm *kvm,
 	 * dirty_bitmap.
 	 */
 	if (flush)
-		kvm_flush_remote_tlbs_with_address(kvm, memslot->base_gfn,
-				memslot->npages);
+		kvm_arch_flush_remote_tlbs_memslot(kvm, memslot);
 }
 EXPORT_SYMBOL_GPL(kvm_mmu_slot_leaf_clear_dirty);
 
@@ -5987,12 +5979,8 @@ void kvm_mmu_slot_largepage_remove_write_access(struct kvm *kvm,
 					false);
 	spin_unlock(&kvm->mmu_lock);
 
-	/* see kvm_mmu_slot_remove_write_access */
-	lockdep_assert_held(&kvm->slots_lock);
-
 	if (flush)
-		kvm_flush_remote_tlbs_with_address(kvm, memslot->base_gfn,
-				memslot->npages);
+		kvm_arch_flush_remote_tlbs_memslot(kvm, memslot);
 }
 EXPORT_SYMBOL_GPL(kvm_mmu_slot_largepage_remove_write_access);
 
@@ -6005,12 +5993,8 @@ void kvm_mmu_slot_set_dirty(struct kvm *kvm,
 	flush = slot_handle_all_level(kvm, memslot, __rmap_set_dirty, false);
 	spin_unlock(&kvm->mmu_lock);
 
-	lockdep_assert_held(&kvm->slots_lock);
-
-	/* see kvm_mmu_slot_leaf_clear_dirty */
 	if (flush)
-		kvm_flush_remote_tlbs_with_address(kvm, memslot->base_gfn,
-				memslot->npages);
+		kvm_arch_flush_remote_tlbs_memslot(kvm, memslot);
 }
 EXPORT_SYMBOL_GPL(kvm_mmu_slot_set_dirty);
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
