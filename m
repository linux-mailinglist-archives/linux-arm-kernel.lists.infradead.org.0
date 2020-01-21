Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADCE1447CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:37:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oY5P80/vYt5jeN+gYOudHeWjU8NiVkz3E3fKxzXvJ78=; b=HfBa8P7JwXf8E/
	mA64Rmvh4CPn1VIXQSy9U1+W1l1ybT6DLA80QEeGiaF7kz9VYJifOGIi0bmTI+Q/k59IgrTLU4HW8
	6EVWjZ+RHX7yBwDUvQ9dOim/GAdukG8sKihbDFaOEi/V9ec7GJekc6kxJ2vfYU2cf9EVCk3dQmgGC
	zxE5fcP23n1Ppb0MmNY/SIeGlQ59Rm5i8r3N7/FekfvZMZRzqGNZGS1pcSNxQHfYRaaNn7Y1ZuCOj
	sB3RhFB0JSiSD8/3+o9ei9pfyXIeYI/FRFwFm6hDP7yi9V07VAUI9dW/Yb/oExPzeFw5a+caJl/AP
	shK7nkpXZB06M42bUX2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu298-0007pW-FI; Tue, 21 Jan 2020 22:37:18 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu24G-0002IB-8J
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:32:21 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 14:32:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="244845162"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 21 Jan 2020 14:32:03 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v5 15/19] KVM: Provide common implementation for generic dirty
 log functions
Date: Tue, 21 Jan 2020 14:31:53 -0800
Message-Id: <20200121223157.15263-16-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200121223157.15263-1-sean.j.christopherson@intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_143216_538671_DCA37C0E 
X-CRM114-Status: GOOD (  18.09  )
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
index 908f7ec3e755..8d2da949476f 100644
--- a/arch/mips/kvm/mips.c
+++ b/arch/mips/kvm/mips.c
@@ -962,69 +962,16 @@ long kvm_arch_vcpu_ioctl(struct file *filp, unsigned int ioctl,
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
index 97ce6c4f7b48..0adaf4791a6d 100644
--- a/arch/powerpc/kvm/book3s.c
+++ b/arch/powerpc/kvm/book3s.c
@@ -799,6 +799,11 @@ int kvmppc_core_check_requests(struct kvm_vcpu *vcpu)
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
index 24212b6ab03f..08b707a08357 100644
--- a/arch/powerpc/kvm/booke.c
+++ b/arch/powerpc/kvm/booke.c
@@ -1766,6 +1766,11 @@ int kvm_arch_vcpu_ioctl_translate(struct kvm_vcpu *vcpu,
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
index 1bfbeac13a3b..dacc13bb4465 100644
--- a/arch/s390/kvm/kvm-s390.c
+++ b/arch/s390/kvm/kvm-s390.c
@@ -569,8 +569,7 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 	return r;
 }
 
-static void kvm_s390_sync_dirty_log(struct kvm *kvm,
-				    struct kvm_memory_slot *memslot)
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
 	int i;
 	gfn_t cur_gfn, last_gfn;
@@ -630,7 +629,7 @@ int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm,
 	if (!memslot->dirty_bitmap)
 		goto out;
 
-	kvm_s390_sync_dirty_log(kvm, memslot);
+	kvm_arch_sync_dirty_log(kvm, memslot);
 	r = kvm_get_dirty_log(kvm, log, &is_dirty);
 	if (r)
 		goto out;
diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
index fe914655b9d0..07f7d6458b89 100644
--- a/arch/x86/kvm/x86.c
+++ b/arch/x86/kvm/x86.c
@@ -4737,77 +4737,24 @@ static int kvm_vm_ioctl_reinject(struct kvm *kvm,
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
index dac96f9c0a82..a56ba1a3c8d0 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -811,23 +811,20 @@ vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf);
 
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
index 3ff510599af6..2c9e1c12e53e 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -1185,55 +1185,15 @@ long kvm_arch_vcpu_ioctl(struct file *filp,
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
index 6210738cf2f6..60692588f0fc 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -855,7 +855,7 @@ static int kvm_vm_release(struct inode *inode, struct file *filp)
 
 /*
  * Allocation size is twice as large as the actual dirty bitmap size.
- * See x86's kvm_vm_ioctl_get_dirty_log() why this is needed.
+ * See kvm_vm_ioctl_get_dirty_log() why this is needed.
  */
 static int kvm_create_dirty_bitmap(struct kvm_memory_slot *memslot)
 {
@@ -1197,6 +1197,7 @@ static int kvm_vm_ioctl_set_memory_region(struct kvm *kvm,
 	return kvm_set_memory_region(kvm, mem);
 }
 
+#ifndef CONFIG_KVM_GENERIC_DIRTYLOG_READ_PROTECT
 int kvm_get_dirty_log(struct kvm *kvm,
 			struct kvm_dirty_log *log, int *is_dirty)
 {
@@ -1230,13 +1231,12 @@ int kvm_get_dirty_log(struct kvm *kvm,
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
@@ -1253,8 +1253,7 @@ EXPORT_SYMBOL_GPL(kvm_get_dirty_log);
  * exiting to userspace will be logged for the next call.
  *
  */
-int kvm_get_dirty_log_protect(struct kvm *kvm,
-			struct kvm_dirty_log *log, bool *flush)
+static int kvm_get_dirty_log_protect(struct kvm *kvm, struct kvm_dirty_log *log)
 {
 	struct kvm_memslots *slots;
 	struct kvm_memory_slot *memslot;
@@ -1262,6 +1261,7 @@ int kvm_get_dirty_log_protect(struct kvm *kvm,
 	unsigned long n;
 	unsigned long *dirty_bitmap;
 	unsigned long *dirty_bitmap_buffer;
+	bool flush;
 
 	as_id = log->slot >> 16;
 	id = (u16)log->slot;
@@ -1275,8 +1275,10 @@ int kvm_get_dirty_log_protect(struct kvm *kvm,
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
@@ -1299,7 +1301,7 @@ int kvm_get_dirty_log_protect(struct kvm *kvm,
 			if (!dirty_bitmap[i])
 				continue;
 
-			*flush = true;
+			flush = true;
 			mask = xchg(&dirty_bitmap[i], 0);
 			dirty_bitmap_buffer[i] = mask;
 
@@ -1310,21 +1312,55 @@ int kvm_get_dirty_log_protect(struct kvm *kvm,
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
@@ -1333,6 +1369,7 @@ int kvm_clear_dirty_log_protect(struct kvm *kvm,
 	unsigned long i, n;
 	unsigned long *dirty_bitmap;
 	unsigned long *dirty_bitmap_buffer;
+	bool flush;
 
 	as_id = log->slot >> 16;
 	id = (u16)log->slot;
@@ -1356,7 +1393,9 @@ int kvm_clear_dirty_log_protect(struct kvm *kvm,
 	    (log->num_pages < memslot->npages - log->first_page && (log->num_pages & 63)))
 	    return -EINVAL;
 
-	*flush = false;
+	kvm_arch_sync_dirty_log(kvm, memslot);
+
+	flush = false;
 	dirty_bitmap_buffer = kvm_second_dirty_bitmap(memslot);
 	if (copy_from_user(dirty_bitmap_buffer, log->dirty_bitmap, n))
 		return -EFAULT;
@@ -1379,17 +1418,32 @@ int kvm_clear_dirty_log_protect(struct kvm *kvm,
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
