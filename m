Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40B2E4044
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 01:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TVXR1bSUHC5cIocsJtuca6c57wmehMQQK/5uRe7spI=; b=JUiDAaWRpb5o+t
	5M6XdlTtOnI7O/hiqg4JcIgvDPRGTsFIFAys3Z2E4WHBUwr/tPcT/dvpTtG4+gj4cISz2D4Ur/YI5
	TX4V4iRbKcnMvbuuqQv5uiK20xSQt7CwK9BNL2RkKXrFR3nQSDeVnXr1ch8hJbTqvIIZdMUEI8KBz
	cKuhYVl35CSnxHyNG0ZZrsGM8XHuVnDN96hNYOEnJ8K2+2P5PwtnNxS2x/2om9GSWKXGYnezKR8AS
	LH769KJPXWfUVuwjYig9W92kogPVfhQuYq9VYwx1IUor0J9V6ixx2NSnLppfGu3ce1DtiKm27W0Dl
	Me/2NfOC33w/f7LzBYqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNmGo-00087G-Nd; Thu, 24 Oct 2019 23:11:54 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNmD2-0003iY-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 23:08:04 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 16:07:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,226,1569308400"; d="scan'208";a="202445866"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.41])
 by orsmga006.jf.intel.com with ESMTP; 24 Oct 2019 16:07:46 -0700
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: James Hogan <jhogan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Janosch Frank <frankja@linux.ibm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v3 12/15] KVM: Provide common implementation for generic dirty
 log functions
Date: Thu, 24 Oct 2019 16:07:41 -0700
Message-Id: <20191024230744.14543-13-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191024230744.14543-1-sean.j.christopherson@intel.com>
References: <20191024230744.14543-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_160801_079373_A5B3C0B9 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
 Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
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

Move the implementations of KVM_GET_DIRTY_LOG and KVM_CLEAR_DIRTY_LOG
for CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT into common KVM code.
The arch specific implemenations are extremely similar, differing
only in whether the dirty log needs to be sync'd from hardware (x86)
and how the TLBs are flushed.  Add new arch hooks to handle sync
and TLB flush; the sync will also be used for non-generic dirty log
support in a future patch (s390).

The ulterior motive for providing a common implementation is to
eliminate the dependency between arch and common code with respect to
the memslot referenced by the dirty log, i.e. to make it obvious in the
code that the validity of the memslot is guaranteed, as a future patch
will rework memslot handling such that id_to_memslot() can return NULL.

Acked-by: Christoffer Dall <christoffer.dall@arm.com>
Tested-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 arch/mips/kvm/mips.c      | 63 +++--------------------------
 arch/powerpc/kvm/book3s.c |  5 +++
 arch/powerpc/kvm/booke.c  |  5 +++
 arch/s390/kvm/kvm-s390.c  |  5 +--
 arch/x86/kvm/x86.c        | 61 ++--------------------------
 include/linux/kvm_host.h  | 21 +++++-----
 virt/kvm/arm/arm.c        | 48 ++--------------------
 virt/kvm/kvm_main.c       | 84 ++++++++++++++++++++++++++++++++-------
 8 files changed, 103 insertions(+), 189 deletions(-)

diff --git a/arch/mips/kvm/mips.c b/arch/mips/kvm/mips.c
index 713e5465edb0..6bb367a4e51c 100644
--- a/arch/mips/kvm/mips.c
+++ b/arch/mips/kvm/mips.c
@@ -965,69 +965,16 @@ long kvm_arch_vcpu_ioctl(struct file *filp, unsigned int ioctl,
 	return r;
 }
 
-/**
- * kvm_vm_ioctl_get_dirty_log - get and clear the log of dirty pages in a slot
- * @kvm: kvm instance
- * @log: slot id and address to which we copy the log
- *
- * Steps 1-4 below provide general overview of dirty page logging. See
- * kvm_get_dirty_log_protect() function description for additional details.
- *
- * We call kvm_get_dirty_log_protect() to handle steps 1-3, upon return we
- * always flush the TLB (step 4) even if previous step failed  and the dirty
- * bitmap may be corrupt. Regardless of previous outcome the KVM logging API
- * does not preclude user space subsequent dirty log read. Flushing TLB ensures
- * writes will be marked dirty for next log read.
- *
- *   1. Take a snapshot of the bit and clear it if needed.
- *   2. Write protect the corresponding page.
- *   3. Copy the snapshot to the userspace.
- *   4. Flush TLB's if needed.
- */
-int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
-	struct kvm_memslots *slots;
-	struct kvm_memory_slot *memslot;
-	bool flush = false;
-	int r;
 
-	mutex_lock(&kvm->slots_lock);
-
-	r = kvm_get_dirty_log_protect(kvm, log, &flush);
-
-	if (flush) {
-		slots = kvm_memslots(kvm);
-		memslot = id_to_memslot(slots, log->slot);
-
-		/* Let implementation handle TLB/GVA invalidation */
-		kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
-	}
-
-	mutex_unlock(&kvm->slots_lock);
-	return r;
 }
 
-int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm, struct kvm_clear_dirty_log *log)
+void kvm_arch_dirty_log_tlb_flush(struct kvm *kvm,
+				  struct kvm_memory_slot *memslot)
 {
-	struct kvm_memslots *slots;
-	struct kvm_memory_slot *memslot;
-	bool flush = false;
-	int r;
-
-	mutex_lock(&kvm->slots_lock);
-
-	r = kvm_clear_dirty_log_protect(kvm, log, &flush);
-
-	if (flush) {
-		slots = kvm_memslots(kvm);
-		memslot = id_to_memslot(slots, log->slot);
-
-		/* Let implementation handle TLB/GVA invalidation */
-		kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
-	}
-
-	mutex_unlock(&kvm->slots_lock);
-	return r;
+	/* Let implementation handle TLB/GVA invalidation */
+	kvm_mips_callbacks->flush_shadow_memslot(kvm, memslot);
 }
 
 long kvm_arch_vm_ioctl(struct file *filp, unsigned int ioctl, unsigned long arg)
diff --git a/arch/powerpc/kvm/book3s.c b/arch/powerpc/kvm/book3s.c
index a5d4a1014fdf..84f66c1592a3 100644
--- a/arch/powerpc/kvm/book3s.c
+++ b/arch/powerpc/kvm/book3s.c
@@ -829,6 +829,11 @@ int kvmppc_core_check_requests(struct kvm_vcpu *vcpu)
 	return vcpu->kvm->arch.kvm_ops->check_requests(vcpu);
 }
 
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
+{
+
+}
+
 int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
 {
 	return kvm->arch.kvm_ops->get_dirty_log(kvm, log);
diff --git a/arch/powerpc/kvm/booke.c b/arch/powerpc/kvm/booke.c
index a22ff567724a..35a4ef89a1db 100644
--- a/arch/powerpc/kvm/booke.c
+++ b/arch/powerpc/kvm/booke.c
@@ -1796,6 +1796,11 @@ int kvm_arch_vcpu_ioctl_translate(struct kvm_vcpu *vcpu,
 	return r;
 }
 
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
+{
+
+}
+
 int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
 {
 	return -ENOTSUPP;
diff --git a/arch/s390/kvm/kvm-s390.c b/arch/s390/kvm/kvm-s390.c
index 21f61dae7db1..c0e9929bdb34 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -572,8 +572,7 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 	return r;
 }
 
-static void kvm_s390_sync_dirty_log(struct kvm *kvm,
-				    struct kvm_memory_slot *memslot)
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
 	int i;
 	gfn_t cur_gfn, last_gfn;
@@ -633,7 +632,7 @@ int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm,
 	if (!memslot->dirty_bitmap)
 		goto out;
 
-	kvm_s390_sync_dirty_log(kvm, memslot);
+	kvm_arch_sync_dirty_log(kvm, memslot);
 	r = kvm_get_dirty_log(kvm, log, &is_dirty);
 	if (r)
 		goto out;
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index b2a66c0143f9..71f579f63951 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -4642,77 +4642,24 @@ static int kvm_vm_ioctl_reinject(struct kvm *kvm,
 	return 0;
 }
 
-/**
- * kvm_vm_ioctl_get_dirty_log - get and clear the log of dirty pages in a slot
- * @kvm: kvm instance
- * @log: slot id and address to which we copy the log
- *
- * Steps 1-4 below provide general overview of dirty page logging. See
- * kvm_get_dirty_log_protect() function description for additional details.
- *
- * We call kvm_get_dirty_log_protect() to handle steps 1-3, upon return we
- * always flush the TLB (step 4) even if previous step failed  and the dirty
- * bitmap may be corrupt. Regardless of previous outcome the KVM logging API
- * does not preclude user space subsequent dirty log read. Flushing TLB ensures
- * writes will be marked dirty for next log read.
- *
- *   1. Take a snapshot of the bit and clear it if needed.
- *   2. Write protect the corresponding page.
- *   3. Copy the snapshot to the userspace.
- *   4. Flush TLB's if needed.
- */
-int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
-	bool flush = false;
-	int r;
-
-	mutex_lock(&kvm->slots_lock);
-
 	/*
 	 * Flush potentially hardware-cached dirty pages to dirty_bitmap.
 	 */
 	if (kvm_x86_ops->flush_log_dirty)
 		kvm_x86_ops->flush_log_dirty(kvm);
-
-	r = kvm_get_dirty_log_protect(kvm, log, &flush);
-
-	/*
-	 * All the TLBs can be flushed out of mmu lock, see the comments in
-	 * kvm_mmu_slot_remove_write_access().
-	 */
-	lockdep_assert_held(&kvm->slots_lock);
-	if (flush)
-		kvm_flush_remote_tlbs(kvm);
-
-	mutex_unlock(&kvm->slots_lock);
-	return r;
 }
 
-int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm, struct kvm_clear_dirty_log *log)
+void kvm_arch_dirty_log_tlb_flush(struct kvm *kvm,
+				  struct kvm_memory_slot *memslot)
 {
-	bool flush = false;
-	int r;
-
-	mutex_lock(&kvm->slots_lock);
-
-	/*
-	 * Flush potentially hardware-cached dirty pages to dirty_bitmap.
-	 */
-	if (kvm_x86_ops->flush_log_dirty)
-		kvm_x86_ops->flush_log_dirty(kvm);
-
-	r = kvm_clear_dirty_log_protect(kvm, log, &flush);
-
 	/*
 	 * All the TLBs can be flushed out of mmu lock, see the comments in
 	 * kvm_mmu_slot_remove_write_access().
 	 */
 	lockdep_assert_held(&kvm->slots_lock);
-	if (flush)
-		kvm_flush_remote_tlbs(kvm);
-
-	mutex_unlock(&kvm->slots_lock);
-	return r;
+	kvm_flush_remote_tlbs(kvm);
 }
 
 int kvm_vm_ioctl_irq_line(struct kvm *kvm, struct kvm_irq_level *irq_event,
diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 9ee4eabaf457..cd204b7d2513 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -797,23 +797,20 @@ vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf);
 
 int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext);
 
-int kvm_get_dirty_log(struct kvm *kvm,
-			struct kvm_dirty_log *log, int *is_dirty);
-
-int kvm_get_dirty_log_protect(struct kvm *kvm,
-			      struct kvm_dirty_log *log, bool *flush);
-int kvm_clear_dirty_log_protect(struct kvm *kvm,
-				struct kvm_clear_dirty_log *log, bool *flush);
-
 void kvm_arch_mmu_enable_log_dirty_pt_masked(struct kvm *kvm,
 					struct kvm_memory_slot *slot,
 					gfn_t gfn_offset,
 					unsigned long mask);
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot);
 
-int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm,
-				struct kvm_dirty_log *log);
-int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm,
-				  struct kvm_clear_dirty_log *log);
+#ifdef CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT
+void kvm_arch_dirty_log_tlb_flush(struct kvm *kvm,
+				  struct kvm_memory_slot *memslot);
+#else /* !CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT */
+int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log);
+int kvm_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log,
+		      int *is_dirty);
+#endif
 
 int kvm_vm_ioctl_irq_line(struct kvm *kvm, struct kvm_irq_level *irq_level,
 			bool line_status);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 86c6aa1cb58e..8b4c06a33842 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -1203,55 +1203,15 @@ long kvm_arch_vcpu_ioctl(struct file *filp,
 	return r;
 }
 
-/**
- * kvm_vm_ioctl_get_dirty_log - get and clear the log of dirty pages in a slot
- * @kvm: kvm instance
- * @log: slot id and address to which we copy the log
- *
- * Steps 1-4 below provide general overview of dirty page logging. See
- * kvm_get_dirty_log_protect() function description for additional details.
- *
- * We call kvm_get_dirty_log_protect() to handle steps 1-3, upon return we
- * always flush the TLB (step 4) even if previous step failed  and the dirty
- * bitmap may be corrupt. Regardless of previous outcome the KVM logging API
- * does not preclude user space subsequent dirty log read. Flushing TLB ensures
- * writes will be marked dirty for next log read.
- *
- *   1. Take a snapshot of the bit and clear it if needed.
- *   2. Write protect the corresponding page.
- *   3. Copy the snapshot to the userspace.
- *   4. Flush TLB's if needed.
- */
-int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
-	bool flush = false;
-	int r;
 
-	mutex_lock(&kvm->slots_lock);
-
-	r = kvm_get_dirty_log_protect(kvm, log, &flush);
-
-	if (flush)
-		kvm_flush_remote_tlbs(kvm);
-
-	mutex_unlock(&kvm->slots_lock);
-	return r;
 }
 
-int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm, struct kvm_clear_dirty_log *log)
+void kvm_arch_dirty_log_tlb_flush(struct kvm *kvm,
+				  struct kvm_memory_slot *memslot)
 {
-	bool flush = false;
-	int r;
-
-	mutex_lock(&kvm->slots_lock);
-
-	r = kvm_clear_dirty_log_protect(kvm, log, &flush);
-
-	if (flush)
-		kvm_flush_remote_tlbs(kvm);
-
-	mutex_unlock(&kvm->slots_lock);
-	return r;
+	kvm_flush_remote_tlbs(kvm);
 }
 
 static int kvm_vm_ioctl_set_device_addr(struct kvm *kvm,
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 04c4a4b01ae8..9da9c801a237 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -793,7 +793,7 @@ static int kvm_vm_release(struct inode *inode, struct file *filp)
 
 /*
  * Allocation size is twice as large as the actual dirty bitmap size.
- * See x86's kvm_vm_ioctl_get_dirty_log() why this is needed.
+ * See kvm_vm_ioctl_get_dirty_log() why this is needed.
  */
 static int kvm_create_dirty_bitmap(struct kvm_memory_slot *memslot)
 {
@@ -1135,6 +1135,7 @@ static int kvm_vm_ioctl_set_memory_region(struct kvm *kvm,
 	return kvm_set_memory_region(kvm, mem);
 }
 
+#ifndef CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT
 int kvm_get_dirty_log(struct kvm *kvm,
 			struct kvm_dirty_log *log, int *is_dirty)
 {
@@ -1168,13 +1169,12 @@ int kvm_get_dirty_log(struct kvm *kvm,
 }
 EXPORT_SYMBOL_GPL(kvm_get_dirty_log);
 
-#ifdef CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT
+#else /* CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT */
 /**
  * kvm_get_dirty_log_protect - get a snapshot of dirty pages
  *	and reenable dirty page tracking for the corresponding pages.
  * @kvm:	pointer to kvm instance
  * @log:	slot id and address to which we copy the log
- * @flush:	true if TLB flush is needed by caller
  *
  * We need to keep it in mind that VCPU threads can write to the bitmap
  * concurrently. So, to avoid losing track of dirty pages we keep the
@@ -1191,8 +1191,7 @@ EXPORT_SYMBOL_GPL(kvm_get_dirty_log);
  * exiting to userspace will be logged for the next call.
  *
  */
-int kvm_get_dirty_log_protect(struct kvm *kvm,
-			struct kvm_dirty_log *log, bool *flush)
+static int kvm_get_dirty_log_protect(struct kvm *kvm, struct kvm_dirty_log *log)
 {
 	struct kvm_memslots *slots;
 	struct kvm_memory_slot *memslot;
@@ -1200,6 +1199,7 @@ int kvm_get_dirty_log_protect(struct kvm *kvm,
 	unsigned long n;
 	unsigned long *dirty_bitmap;
 	unsigned long *dirty_bitmap_buffer;
+	bool flush;
 
 	as_id = log->slot >> 16;
 	id = (u16)log->slot;
@@ -1213,8 +1213,10 @@ int kvm_get_dirty_log_protect(struct kvm *kvm,
 	if (!dirty_bitmap)
 		return -ENOENT;
 
+	kvm_arch_sync_dirty_log(kvm, memslot);
+
 	n = kvm_dirty_bitmap_bytes(memslot);
-	*flush = false;
+	flush = false;
 	if (kvm->manual_dirty_log_protect) {
 		/*
 		 * Unlike kvm_get_dirty_log, we always return false in *flush,
@@ -1237,7 +1239,7 @@ int kvm_get_dirty_log_protect(struct kvm *kvm,
 			if (!dirty_bitmap[i])
 				continue;
 
-			*flush = true;
+			flush = true;
 			mask = xchg(&dirty_bitmap[i], 0);
 			dirty_bitmap_buffer[i] = mask;
 
@@ -1248,21 +1250,55 @@ int kvm_get_dirty_log_protect(struct kvm *kvm,
 		spin_unlock(&kvm->mmu_lock);
 	}
 
+	if (flush)
+		kvm_arch_dirty_log_tlb_flush(kvm, memslot);
+
 	if (copy_to_user(log->dirty_bitmap, dirty_bitmap_buffer, n))
 		return -EFAULT;
 	return 0;
 }
-EXPORT_SYMBOL_GPL(kvm_get_dirty_log_protect);
+
+
+/**
+ * kvm_vm_ioctl_get_dirty_log - get and clear the log of dirty pages in a slot
+ * @kvm: kvm instance
+ * @log: slot id and address to which we copy the log
+ *
+ * Steps 1-4 below provide general overview of dirty page logging. See
+ * kvm_get_dirty_log_protect() function description for additional details.
+ *
+ * We call kvm_get_dirty_log_protect() to handle steps 1-3, upon return we
+ * always flush the TLB (step 4) even if previous step failed  and the dirty
+ * bitmap may be corrupt. Regardless of previous outcome the KVM logging API
+ * does not preclude user space subsequent dirty log read. Flushing TLB ensures
+ * writes will be marked dirty for next log read.
+ *
+ *   1. Take a snapshot of the bit and clear it if needed.
+ *   2. Write protect the corresponding page.
+ *   3. Copy the snapshot to the userspace.
+ *   4. Flush TLB's if needed.
+ */
+static int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm,
+				      struct kvm_dirty_log *log)
+{
+	int r;
+
+	mutex_lock(&kvm->slots_lock);
+
+	r = kvm_get_dirty_log_protect(kvm, log);
+
+	mutex_unlock(&kvm->slots_lock);
+	return r;
+}
 
 /**
  * kvm_clear_dirty_log_protect - clear dirty bits in the bitmap
  *	and reenable dirty page tracking for the corresponding pages.
  * @kvm:	pointer to kvm instance
  * @log:	slot id and address from which to fetch the bitmap of dirty pages
- * @flush:	true if TLB flush is needed by caller
  */
-int kvm_clear_dirty_log_protect(struct kvm *kvm,
-				struct kvm_clear_dirty_log *log, bool *flush)
+static int kvm_clear_dirty_log_protect(struct kvm *kvm,
+				       struct kvm_clear_dirty_log *log)
 {
 	struct kvm_memslots *slots;
 	struct kvm_memory_slot *memslot;
@@ -1271,6 +1307,7 @@ int kvm_clear_dirty_log_protect(struct kvm *kvm,
 	unsigned long i, n;
 	unsigned long *dirty_bitmap;
 	unsigned long *dirty_bitmap_buffer;
+	bool flush;
 
 	as_id = log->slot >> 16;
 	id = (u16)log->slot;
@@ -1294,7 +1331,9 @@ int kvm_clear_dirty_log_protect(struct kvm *kvm,
 	    (log->num_pages < memslot->npages - log->first_page && (log->num_pages & 63)))
 	    return -EINVAL;
 
-	*flush = false;
+	kvm_arch_sync_dirty_log(kvm, memslot);
+
+	flush = false;
 	dirty_bitmap_buffer = kvm_second_dirty_bitmap(memslot);
 	if (copy_from_user(dirty_bitmap_buffer, log->dirty_bitmap, n))
 		return -EFAULT;
@@ -1317,17 +1356,32 @@ int kvm_clear_dirty_log_protect(struct kvm *kvm,
 		 * a problem if userspace sets them in log->dirty_bitmap.
 		*/
 		if (mask) {
-			*flush = true;
+			flush = true;
 			kvm_arch_mmu_enable_log_dirty_pt_masked(kvm, memslot,
 								offset, mask);
 		}
 	}
 	spin_unlock(&kvm->mmu_lock);
 
+	if (flush)
+		kvm_arch_dirty_log_tlb_flush(kvm, memslot);
+
 	return 0;
 }
-EXPORT_SYMBOL_GPL(kvm_clear_dirty_log_protect);
-#endif
+
+static int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm,
+					struct kvm_clear_dirty_log *log)
+{
+	int r;
+
+	mutex_lock(&kvm->slots_lock);
+
+	r = kvm_clear_dirty_log_protect(kvm, log);
+
+	mutex_unlock(&kvm->slots_lock);
+	return r;
+}
+#endif /* CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT */
 
 bool kvm_largepages_enabled(void)
 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
